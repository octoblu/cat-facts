express = require 'express'
app = express()

app.get '/api/cat-fact', (req, res) =>
	res.send('hello world');

app.listen(3005);
