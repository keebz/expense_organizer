require 'organizer'
require 'rspec_helper'
require 'table_butler'
require 'pry'

describe Organizer do

  before do
    create_test_objects
  end

  it 'is initialized with a name' do
    expect(@test_organizer).to be_an_instance_of Organizer
  end

  it 'returns all saved organizers' do
    expect(@test_organizer).to eq [@test_organizer]
  end

  it "returns all the expenses in a category" do
    expect(@test_organizer.return_expenses(@test_category.id)).to eq ['candy']
  end

  it 'returns the total of all the expenses in a specific category' do
    expect(@test_organizer.return_category_total(@test_category.id)).to eq 1
  end

  it 'returns the percent of the total cost of a specific category' do
    expect(@test_organizer.percent_of_cost(@test_category.id)).to eq 0.5
  end
end
