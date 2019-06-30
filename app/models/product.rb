class Product < ApplicationRecord
  has_many :comments
  has_many :rates
  has_many :orders
  has_and_belongs_to_many :users
end
