require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/queen_attack')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/form') do
  @queen = (params.fetch('queen').split(",").map(&:to_i)).queen_attack(params.fetch('player').split(",").map(&:to_i))
  erb(:index)
end
