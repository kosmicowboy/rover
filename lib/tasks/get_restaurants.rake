namespace :get_restaurants do
  task import: :environment do
    scrape = GetRestaurants.new
    scrape.run
  end

end
