require 'nokogiri'
require 'open-uri'

url = "http://www.piletilevi.ee/est/piletid/muusika/rock_ja_pop"

document = Nokogiri::HTML(open(url))

concerts = document.css('.eventslist_item')

concerts.each do |concert|
  puts concert.at_css('.eventslist_item_title span').text.strip
  puts concert.at_css('.eventslist_item_date').text.strip.gsub(/\s+/, " ")
  puts concert.at_css('.eventslist_item_place').text.strip
  puts concert.at_css('.eventslist_item_country').text.strip
  puts concert.at_css('.eventslist_item_price_primary').text.strip
  puts "---"
end