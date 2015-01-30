require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  @venues = Venue.all()
  erb(:index)
end

post("/venue") do
  venue = Venue.create({ :name => params["name"], :location => params["location"] })
  @venues = Venue.all()
  erb(:index)
end
