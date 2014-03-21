# An online dictionary
require 'sinatra'

get '/:word.html' do
  @word = lookup(params[:word])
  haml :show
end

