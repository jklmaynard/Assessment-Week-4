require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

# INDEX.erb CRUD

get("/") do
  @venues = Venue.all()
  @bands = Band.all()
  erb(:index)
end

post("/venue") do
  venue = Venue.create({ :name => params["name"], :location => params["location"] })
  @venues = Venue.all()
  redirect("/")
end

post("/band") do
  band = Band.create({ :name => params["name"] })
  @bands = Band.all()
  redirect("/")
end

get("/venues/:id") do
  @venue = Venue.find(params["id"])
  erb(:venues)
end
