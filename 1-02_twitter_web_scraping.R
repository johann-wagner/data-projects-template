### Setup and Configuration ----------------------------------------------------
source(here::here('0-00_setup_and_configuration.R'))
library(rtweet)
library(httr)
library(httpuv)

### Twitter API Setup ----------------------------------------------------------

source(here::here('api_keys.R'))

my_authorization <- create_token(
  app = "JWDataProjects",
  consumer_key = consumer_token,
  consumer_secret = consumer_secret)


keith_tweets <- get_timeline(
  c("helloitskeith"),
  token = my_authorization)

search_tweets("#helloitskeith", n = 5000, include_rts = FALSE, token = my_authorization)
test <- search_users("#love", n = 200)
random_stream <- stream_tweets("", token = my_authorization)
stream_london <- stream_tweets(location = lookup_coords("london"), timeout = 60)

