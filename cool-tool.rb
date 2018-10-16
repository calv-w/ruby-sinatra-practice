#Cool scoring

require 'sinatra'

get '/' do
  "Hello World"
end

class CoolScore
  def initialize(name, age)
    @name = name
    @age = age
  end

end


#coolScore = CoolScore.new("Bob", 30)
