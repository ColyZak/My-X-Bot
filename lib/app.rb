 require 'pry'
 # ligne très importante qui appelle la gem.

 require 'x'

 # n'oublie pas les lignes pour Dotenv ici…
 require 'dotenv'# Appelle la gem Dotenv

Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)

 # quelques lignes qui appellent les clés d'API de ton fichier .env
 def login_twitter_and_tweet()
  
  
x_credentials = {
   api_key:            ENV['TWITTER_CONSUMER_KEY'],
   api_key_secret:      ENV['TWITTER_CONSUMER_SECRET'],
   access_token:        ENV['TWITTER_ACCESS_TOKEN'],
   access_token_secret: ENV['TWITTER_ACCESS_TOKEN_SECRET'],
 }


# Initialize an X API client with your OAuth credentials
binding.pry
 x_client = X::Client.new(**x_credentials)
 # Get data about yourself
 x_client.get("users/me")
 # Post
 post = x_client.post("tweets", '{"text":"Hello, World! (from @gem)"}')
 # {"data"=>{"edit_history_tweet_ids"=>["1234567890123456789"], "id"=>"1234567890123456789", "text"=>"Hello, World! (from @gem)"}}

end

 login_twitter_and_tweet