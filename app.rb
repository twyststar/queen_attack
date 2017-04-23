require('sinatra')
require('sinatra/reloader')
require('./lib/queen_attack')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/form') do
  @queen = (params.fetch('queen').split("").map .map(&:to_i)).queen_attack(params.fetch('player').split("").map(&:to_i))
  erb(:index)
end
