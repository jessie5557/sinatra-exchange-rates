require "sinatra"
require "sinatra/reloader"

require "http"
require "json"
require "dotenv/load"

get("/") do
  
  list_url = "https://api.exchangerate.host/list?access_key=" + ENV.fetch("FX_KEY")

  @raw_response = HTTP.get(list_url)
  @string_response = @raw_response.to_s
  # parse to hash
  @parsed_response = JSON.parse()

  erb(:homepage)
end
