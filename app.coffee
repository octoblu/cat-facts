express = require 'express'
morgan  = require 'morgan'

app = express()
app.use(morgan('combined'))

app.all '/api/cat-fact', (req, res) =>
	res.send('hello world');

app.listen(3005);
