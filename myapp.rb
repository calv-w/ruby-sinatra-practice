# my application requires the GEM (library) sinatra
require 'sinatra'

# this is a root definition - sinitra specific - web browser code.  Sinitra is a web framework, like Rails
# these methods below are Sintra methods.
# the slash is for the route of the website doiman - the top level
get('/') do
  'Hello world <b> hello world </b>'
end

get '/comments' do
  'wendy 1234'
end
