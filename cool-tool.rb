#Cool scoring

require 'sinatra'

get '/' do
  "Hello World"
end


class CoolScore

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def score
    score = 15
  end

end

#coolscore = CoolScore.new("Bob", 30)
