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

    if
      name[0] == 'A' && name[-1] =='n'
        score = ((age * 0.5).floor) + 24
    elsif
      name[0] == 'A'
        score = ((age * 0.5).floor) + 10
    elsif
      name[-1] == 'n'
        score = ((age * 0.5).floor) + 14
    else
      score = (age * 0.5).floor
    end
  end

  def firstletter
    name[0]
  end

  def lastletter
    name[-1]
  end
end

#coolscore = CoolScore.new("Bob", 30)
