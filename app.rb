require('pry')
require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require("pg")
require('./lib/band')
require('./lib/venue')
also_reload('lib/**/*.rb')

######################### NAVIGATION LINKS #########################
get('/') do
  erb(:index)
end

get('/all_bands') do
  @bands = Band.all()
  erb(:bands)
end

get('/all_venues') do
  @venues = Venue.all()
  erb(:venues)
end

######################### BANDS ROUTES #########################

get('/add_band_toggle') do
  @bands = Band.all()
  @add_a_band = true
  erb(:bands)
end

post('/add_band') do
  new_band = Band.create({:name => params.fetch("name"), :album => params.fetch("album"), :description => params.fetch("description")})
  @bands = Band.all()
  erb(:bands)
end


get('/update_band/:id') do
  @band = Band.find(params.fetch("id"))
  erb(:band_update)
end
#============ Update Routes ============#
post('/update_band/:id/name') do
  @band = Band.find(params.fetch("id"))
  @band.update(:name => params.fetch("name"))

  erb(:band_update)
end

post('/update_band/:id/description') do
  @band = Band.find(params.fetch("id"))
  @band.update(:description => params.fetch("description"))

  erb(:band_update)
end

post('/update_band/:id/album') do
  @band = Band.find(params.fetch("id"))
  @band.update(:album => params.fetch("album"))

  erb(:band_update)
end
