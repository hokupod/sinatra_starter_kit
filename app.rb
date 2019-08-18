require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    @title = 'index'
    erb :index
  end
end
