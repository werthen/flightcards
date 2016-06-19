require 'sinatra'
require 'sinatra/json'
require 'coffee-script'
require 'slim'
require 'yaml'

data = YAML.load_file('data.yaml')['terms']

get '/' do
  slim :index
end

get '/question' do
  options = data.sample(3)
  answer = options.sample
  json(answer: answer, options: options)
end
