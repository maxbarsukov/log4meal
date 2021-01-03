class Entry < ApplicationRecord
  validates :meal_type, :calories, :proteins, :carbohydrates, :fats, presence: true
  belongs_to :user
  def day
    created_at.strftime('%b %e, %Y')
  end
end
