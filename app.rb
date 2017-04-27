require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/contacts'

get('/') do
  @contacts = Contact.all
  erb(:index)
end

get('/new_contact') do
  erb :new_contact_form
end

 post('/new_contact') do
   @contact = Contact.new(:first_name => params.fetch('first_name'), :last_name => params.fetch('last_name'), :job_title => params.fetch('job_title'), :company => params.fetch('company'))
   @contact.save
   redirect '/new_contact'
   erb :new_contact_form
 end

get('/contact_details') do
  erb :contact_details
end
