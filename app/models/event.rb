class Event < ActiveRecord::Base
  has_many :comments
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations
end
