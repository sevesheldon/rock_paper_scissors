require('sinatra')
require('sinatra/reloader')
require('./lib/r_p_s')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:form)
end

get('/result') do

  result = params.fetch('move_one').beats?(params.fetch('move_two'))

  @move_one = params.fetch('move_one')
  @move_two = params.fetch('move_two')

  if @move_one == @move_two
    @result = "It's a tie"
  elsif result
    @result = "You win!"
  else
    @result = "Opponent wins!"
  end

  erb(:result)
end
