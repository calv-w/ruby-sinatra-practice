require "minitest/autorun"

class CalcScore

  def calculate(name,age,colour,height)
    coolscore = 0    
    if name =~ /\A[Aa]/
     coolscore += 10
    end
    if name =~ /[Nn]\z/
      coolscore += 14
    end

    #Add in age factor
    coolscore += (age * 0.5).floor

    #Add on by colour
    case colour
    when 'Red'
      coolscore +=3
    when 'Orange'
      coolscore +=5
    when 'Blue'
      coolscore -=1
    when 'Green'
      coolscore -=5
    end

    #Double if height between 1.5 and 1.9
    if height.between?(1.5,1.9)
      coolscore  = coolscore * 2
    end

    puts "coolscore is #{coolscore}"
    coolscore
    
  end

end

class WendyCoolScore < Minitest::Test
  def test_zero_score
    puts "this is the zero test"
    score = CalcScore.new
    # assert_equal tests compares 2 values
    assert_equal(0, score.calculate('Fred',0,'Yellow',1))
  end

  def test_aname
    puts "this is the beginning with A test"
    score = CalcScore.new
    assert_equal(10, score.calculate('Anne',0,'Yellow',1))
  end  

  def test_endn
    puts "this is the ending with n test"
    score = CalcScore.new
    assert_equal(14, score.calculate('Glen',0,'Yellow',1))
  end

  def test_age
    puts "this is the age test - expecting 5"
    score = CalcScore.new
    assert_equal(5, score.calculate('Harry',11,'Yellow',1))
  end

  def test_colour
    puts "this is the colour test - expecting 3"
    score = CalcScore.new
    assert_equal(3, score.calculate('Harry',0,'Red',1))
  end

  def test_colourminus
    puts "this is the colour test - expecting -1"
    score = CalcScore.new
    assert_equal(-1, score.calculate('Harry',0,'Blue',1))
  end

  def test_height
    puts "this is the height test - expecting 20"
    score = CalcScore.new
    assert_equal(20, score.calculate('Anne',0,'Yellow',1.6))
  end
end



