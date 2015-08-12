require('sinatra')
require('sinatra/reloader')
require('./lib/dealership')
require('./lib/vehicle')
also_reload('lib/**/*.rb')

get('/') do
  @dealership_list = Dealership.all()
  erb(:index)
end

post('/dealerships') do
  new_dealership = Dealership.new(params.fetch('dealership_name'))
  new_dealership.save
  erb(:success)
end

get('/dealership/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end
