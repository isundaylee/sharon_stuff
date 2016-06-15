require 'sinatra'
require 'open-uri'

URL = 'http://quotes.wsj.com/AAL'
REGEX = /AAL will report Q2 earnings on (\d\d\/\d\d\/\d\d\d\d)/

get '/' do
  page = open(URL).read
  REGEX.match(page)[1]
end