express = require 'express'
morgan  = require 'morgan'
facts = require './facts'

app = express()
app.use(morgan('combined'))

app.all '/api/cat-fact', (req, res) =>
  res.set 'Content-Type': 'application/xml'
  res.send "
  <?xml version=\"1.0\" encoding=\"UTF-8\" ?>
  <Response>
      <Say>Hello World</Say>
  </Response>"

app.listen(3005);
