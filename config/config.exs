import Config

config :my_first_app, MyFirstApp.Scheduler, jobs: [
  {"0 */1 * * *", fn ->
    MyFirstApp.FileReader.get_strings_to_tweet(
      Path.join("#{:code.priv_dir(:my_first_app)}", "test.txt")
    )
    |> MyFirstApp.TweetServer.tweet
  end}
]
