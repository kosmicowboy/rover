# require 'nokogiri'
# require 'active_record'
# require '../models/restaurant'

class GetRestaurants
  def run
    file = Rails.root + "app/data/restaurants.html"
    # file = '../data/restaurants.html'
    page = Nokogiri::HTML(open(file))
    names = page.css('.info h2')
    urls = page.css('.photo a')
    #
    # restaurant = Class.new
    total = page.css('.photo a').count
    puts 'running....'

    total.times {|i|
      @restaurant = Restaurant.new
      @restaurant.source_url = page.css('.photo a')[i - 1]['href']
      @restaurant.name = page.css('.info h2')[i - 1].text
      @restaurant.save
    }

    puts total + 'restaurants imported'
  end
end




