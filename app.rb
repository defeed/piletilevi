require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  url = "http://www.piletilevi.ee/est/piletid/muusika/rock_ja_pop"
  document = Nokogiri::HTML(open(url))
  @shows = document.css('.eventslist_item')
  
  erb :shows
end