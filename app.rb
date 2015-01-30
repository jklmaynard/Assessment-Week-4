require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

# HOMEPAGE routes

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

# individual VENUES routes

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

# individual BANDS routes

get("/bands/:id") do
  @band = Band.find(params["id"])
  @venues = Venue.all()
  erb(:bands)
end

patch("/bands/:id") do
  band_id = params.fetch("id")
  @band = Band.find(band_id)
  venue_ids = params.fetch("venue_ids")
  @band.update({:venue_ids => venue_ids})
  @venues = Venue.all()
  erb(:bands)
end
