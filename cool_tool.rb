# Cool scoring

require 'sinatra'

get '/' do
  'Hello World'
end
# Create our class to calculate the cool score
class CoolScore
  attr_accessor :name, :age, :colour

  def initialize(name, age, colour)
    @name = name
    @age = age
    @colour = colour
  end

  def score
    (age * 0.5).floor + name_value + colour_value
  end

  def firstletter
    name[0]
  end

  def lastletter
    name[-1]
  end

  def colour_value
    colour_score = { 'Orange' => 5, 'Red' => 3, 'Blue' => -1, 'Green' => -5 }
    colour_score.default = 0
    colour_score[colour]
  end

  def name_value
    if firstletter == 'A' && lastletter == 'n'
      24
    elsif firstletter == 'A'
      10
    elsif lastletter == 'n'
      14
    else
      0
    end
  end
end

# coolscore = CoolScore.new("Bob", 30)
