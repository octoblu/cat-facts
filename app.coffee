express = require 'express'
morgan  = require 'morgan'
_       = require 'lodash'
facts   = require './facts'

app = express()
app.use(morgan('combined'))

app.all '/api/cat-fact', (req, res) =>
  res.set 'Content-Type': 'application/xml'
  res.send "
  <?xml version=\"1.0\" encoding=\"UTF-8\" ?>
  <Response>
      <Say>Did you know, #{_.sample(facts)}</Say>
  </Response>"

app.listen(3005);
