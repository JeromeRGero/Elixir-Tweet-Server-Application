defmodule MyFirstApp.Tweet do
  def send(str) do
    ExTwitter.configure(:process, [
      consumer_key: System.get_env("pluralsight_tweet_api_key"),
      consumer_secret: System.get_env("pluralsight_tweet_api_secret_key"),
      access_token: System.get_env("pluralsight_tweet_access_token"),
      access_token_secret: System.get_env("pluralsight_tweet_access_secret_token")
    ])

    ExTwitter.update(str)
  end
end
