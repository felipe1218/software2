class Compra < ApplicationRecord
	resourcify
	has_many :compra_productos
	has_many :productos, through: :compra_productos, dependent: :destroy
	belongs_to :usuario
end
