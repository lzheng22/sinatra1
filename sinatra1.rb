require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/getdoc' do
  "<!DOCTYPE html>
  <html>
    <body>
    <h1>Introduction</h1>
    <p style= color:red >Hello! My name is Lekai. I like cooking.</p>
    </body>
  </html>"
end

get '/logon' do
    send_file 'logon.html'
end

post '/submitted' do
    if params[:username] == "bob" && params[:password] == "pass"
        "SUCCESS"
    else
        "FAILURE"
    end
end

get '/hello' do
    send_file 'name.html'
end

post '/hello' do
    "Saved the name"
end

get '/greet' do
    "params[:name]"
end