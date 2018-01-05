class Item < ApplicationRecord
  validates :name, :description, :price, :image, presence: true
  belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items

end
