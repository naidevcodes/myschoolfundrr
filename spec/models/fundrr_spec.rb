require 'rails_helper'

RSpec.describe Fundrr, type: :model do
  before(:all) do
    @fundrr1 = FactoryGirl.build(:fundrr)
  end
  
  it 'has a valid factory' do
    expect(@fundrr1).to be_valid
  end
  it { is_expected.to have_db_column(:title) }
  it { is_expected.to have_db_column(:description) }
  it { is_expected.to have_db_column(:start_date) }
  it { is_expected.to have_db_column(:duration) }
  it { is_expected.to have_db_column(:fundrr_goal) }
  
  it { is_expected.to validate_presence_of(:title) }
end

  # it 'should have a title field' do
  #   expect(@fundrr1.title).to eq('Test Fundrr')
  # end
  # it 'should have a description field' do
  #   expect(@fundrr1.description).to eq('For testing')
  # end
  # it 'should have a start_date field' do
  #   expect(@fundrr1.start_date).to eq('2016-01-20')
          #use datetime.now method or the like
  # end
  # it 'should have a duration field' do
  #   expect(@fundrr1.duration).to eq(90)
  # end
  # it 'should have a fundrr_goal field' do
  #   expect(@fundrr1.fundrr_goal).to eq(20000.00)
  # end