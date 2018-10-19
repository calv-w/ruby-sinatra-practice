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
