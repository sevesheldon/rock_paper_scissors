require('sinatra')
require('sinatra/reloader')
require('./lib/r_p_s')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:form)
end
