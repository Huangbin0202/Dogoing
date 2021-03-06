class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 3}

  has_many :todos
  has_many :comments
  has_many :bugs
  has_many :features

  has_many :user_categories
  has_many :categories, through: :user_categories

  has_secure_password validations: false
end


