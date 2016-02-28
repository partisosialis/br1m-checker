require 'sinatra'
require 'csv'

get '/' do
  erb :index
end

# Handles website section for BR1M
get '/check' do
  csv_text = File.read('data.csv')
  @data = CSV.parse(csv_text, :headers => true)
  erb :check
end

get "/about" do
  erb :about
end
