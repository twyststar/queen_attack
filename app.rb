require('sinatra')
require('sinatra/reloader')
require('./lib/queen_attack')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post ('/form') do
  @queen = (params.fetch('queen')).queen_attack(params.fetch('player'))
  erb(:index)
end
