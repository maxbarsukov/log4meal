class User < ApplicationRecord
  has_many :entries
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
