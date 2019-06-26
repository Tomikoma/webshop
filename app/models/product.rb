class Product < ApplicationRecord
  has_many :comments
  has_many :rates
  has_many :orders
end
