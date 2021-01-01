require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test 'is valid with valid attributes' do
    entry = Entry.new(meal_type: 'Breakfast', calories: 400, carbohydrates: 35, fats: 100, proteins: 50)
    assert entry.valid?
  end

  test 'should not save entry without calories' do
    entry = Entry.new(meal_type: 'Breakfast', carbohydrates: 35, fats: 100, proteins: 50)
    assert_not entry.save
  end

  test 'should not save entry without carbohydrates' do
    entry = Entry.new(meal_type: 'Breakfast', calories: 400, fats: 100, proteins: 50)
    assert_not entry.save
  end

  test 'should not save entry without fats' do
    entry = Entry.new(meal_type: 'Breakfast', calories: 400, carbohydrates: 35, proteins: 50)
    assert_not entry.save
  end

  test 'should not save entry without proteins' do
    entry = Entry.new(calories: 400, carbohydrates: 35, proteins: 50, fats: 100)
    assert_not entry.save
  end
end
