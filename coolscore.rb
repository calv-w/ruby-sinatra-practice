require 'minitest/autorun'

class CalcScore
  def calculate(name, age, colour, height)
    coolscore = 0
    if name =~ /\A[Aa]/
      coolscore += 10
    end
    if name =~ /[Nn]\z/
      coolscore += 14
    end

    # Add in age factor
    coolscore += (age * 0.5).floor

    # Add on by colour
    case colour
    when 'Red'
      coolscore += 3
    when 'Orange'
      coolscore += 5
    when 'Blue'
      coolscore -= 1
    when 'Green'
      coolscore -= 5
    end

    # Double if height between 1.5 and 1.9
    if height.between?(1.5, 1.9)
      coolscore  = coolscore * 2
    end

    puts "coolscore is #{coolscore}"
    coolscore
  end
end
