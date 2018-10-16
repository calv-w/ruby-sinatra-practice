#Cool scoring

require 'sinatra'

get '/' do
  "Hello World"
end

class CoolScore
  def initialize(name)
    @name = name
  end

end


coolScore = CoolScore.new("Bob")
