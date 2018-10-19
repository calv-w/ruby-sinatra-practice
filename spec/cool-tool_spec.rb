require_relative '../cool-tool.rb'

describe 'Cool Score' do
  subject { CoolScore.new("Bob", 30) }

  it "Persons name" do
    expect(subject.name).to eq "Bob"
  end

  it "Persons age" do
    expect(subject.age).to eq 30
  end

  it 'calculates the coolscore' do
    expect(subject.score).to eq 15
  end
end

describe 'Test score for age 40' do
  subject { CoolScore.new("Bob", 40) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 20
  end
end

describe 'Test score for age 39 to check scores are rounded down' do
  subject { CoolScore.new("Bob", 39) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 19
  end
end