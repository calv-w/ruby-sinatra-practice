#Cool scoring

require 'sinatra'

get '/' do
  "Hello World"
end


class CoolScore

  attr_accessor :name, :age, :colour

  def initialize(name, age, colour)
    @name = name
    @age = age
    @colour = colour
  end

  def score

    if
      firstletter == 'A' && lastletter =='n'
        score = ((age * 0.5).floor) + 24 + colourValue
    elsif
      firstletter == 'A'
        score = ((age * 0.5).floor) + 10 + colourValue
    elsif
      lastletter == 'n'
        score = ((age * 0.5).floor) + 14 + colourValue
    else
      score = (age * 0.5).floor + colourValue
    end
  end

  def firstletter
    name[0]
  end

  def lastletter
    name[-1]
  end

  def colourValue
    if
      colour == "Orange"
      colourValue = 5
    elsif
      colour == "Red"
      colourValue = 3
    elsif
      colour == "Blue"
      colourValue = -1
    elsif
      colour == "Green"
      colourValue = -5
    else colourValue = 0
    end
  end
end

#coolscore = CoolScore.new("Bob", 30)
