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

# individual VENUES edits

get("/venues/:id") do
  @venue = Venue.find(params["id"])
  erb(:venues)
end

patch("/venues/:id") do
  @venue = Venue.find(params["id"])
  description = params.fetch("description")
  attributes = {:description => description}
  @venue.update(attributes)
  erb(:venues)
end

delete("/venues/:id") do
  @venue = Venue.find(params["id"])
  @venue.destroy
  redirect("/")
end
