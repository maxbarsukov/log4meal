class Entry < ApplicationRecord
  belongs_to :user
  validates :meal_type, :calories, :proteins, :carbohydrates, :fats, presence: true

  def day
    created_at.strftime('%b %e, %Y')
  end
end
