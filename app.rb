require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

 # /title is received from the form
get('/result') do
   # @title below is the output which feeds into line 2 of the title.erb
  @output = params.fetch('input').to_i.coins()
   # :title sends the output TO the title page, aka the GUI output page
  erb(:result)
end
