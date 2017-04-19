require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

 # /title is received from the form
get('/title') do
   # @title below is the output which feeds into line 2 of the title.erb
  @title = params.fetch('title').title_case()
   # :title sends the output TO the title page, aka the GUI output page
  erb(:title)
end
