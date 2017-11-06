require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
require 'pry'


include SendGrid


get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

post '/' do
  from = Email.new(email: params['email'])
  to = Email.new(email: "mjj5002@gmail.com")
  subject = params['email-subject']
  content = Content.new(type: 'text/plain', value: params['email-message'])
  mail = Mail.new(from, subject, to, content)
  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)

  erb :index
end
