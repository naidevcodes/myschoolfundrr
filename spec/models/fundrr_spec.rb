require 'rails_helper'

RSpec.describe Fundrr, type: :model do
  before(:each) do
    @fundrr1 = Fundrr.new(title: 'Test Fundrr', description: 'For testing', 
      start_date: '2016-01-20', duration: 90, fundrr_goal: 28000.00)
  end

  it 'should have a title field' do
    expect(@fundrr1.title).to eq('Test Fundrr')
  end
  it 'should have a description field' do
    expect(@fundrr1.description).to eq('For testing')
  end
  it 'should have a start_date field' do
    expect(@fundrr1.start_date).to eq('2016-01-20')
  end
  it 'should have a duration field' do
    expect(@fundrr1.duration).to eq(90)
  end
  it 'should have a fundrr_goal field' do
    expect(@fundrr1.fundrr_goal).to eq(28000.00)
  end
end