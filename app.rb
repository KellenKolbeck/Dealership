require('sinatra')
require('sinatra/reloader')
require('./lib/dealership')
require('./lib/vehicle')
also_reload('lib/**/*.rb')

get('/') do
  @dealership_list = Dealership.all()
  erb(:index)
end

get('/dealerships') do
  @dealerships = Dealership.all()
end

post('/dealerships') do
  new_dealership = Dealership.new(params.fetch('dealership_name'))
  new_dealership.save()
  @dealerships = Dealership.all()
  erb(:success)
end

get('/dealership/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end

post('/vehicles') do

  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  @new_vehicle = Vehicle.new(make, model, year)
  @new_vehicle.save()
  @dealership = Dealership.find(params.fetch('dealership_id').to_i())
  @dealership.save_vehicle(@new_vehicle)
  erb(:success)
end
