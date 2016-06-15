require 'sinatra'
require 'open-uri'

URL = 'http://quotes.wsj.com/%s'
REGEX = /will report .* earnings on (\d\d\/\d\d\/\d\d\d\d)/

get '/:company' do
  company = params[:company]
  page = open(URL % company).read
  REGEX.match(page)[1]
end