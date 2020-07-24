class Product < ApplicationRecord
  has_many :cart_products
  has_many :carts, through: :cart_products

  validates :name, :client_id, :registration_date, :country_id, :territory_id, :area, :client_type, presence: true
end
