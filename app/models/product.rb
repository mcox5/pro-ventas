class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :sales_products
end
