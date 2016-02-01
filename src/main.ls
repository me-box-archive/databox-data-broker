require! { express, 'body-parser', './sources/twitter.ls' }

app = express!

app.enable 'trust proxy'

app.use express.static 'static'

app.use body-parser.urlencoded extended: false

app.post '/twitter/statuses/home_timeline' (req, res) !->
  (error, tweets, response) <-! twitter.get \statuses/home_timeline
  if error
    res.write-head 400
    res.end!
    return
  res.header 'Access-Control-Allow-Origin': \*
  tweets |> JSON.stringify |> res.end

app.post '/400' (req, res) !->
  res.write-head 400
  res.end!

app.listen (process.env.PORT or 8080)
