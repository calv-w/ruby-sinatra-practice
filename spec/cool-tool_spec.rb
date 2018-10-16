require_relative '../cool-tool.rb'

describe 'Cool Score' do
  subject { CoolScore.new }

  it "Should receive the name of the player" do
    coolScore = CoolScore.new("Bob", 40)
    expect name = "Bob"
    expect age = 40
  end

end
