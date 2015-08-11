require('sinatra')
require('sinatra/reloader')
require('./lib/to_do')
also_reload('lib/**/*.rb')

get('/') do
  @description = Task.all()
  erb(:index)
end

post("/to_do") do
  description = params.fetch("description")
  new_task = Task.new(description)
  new_task.save()
  erb(:to_do)
end
