class AddFotoToProductos < ActiveRecord::Migration[5.2]
	def change
		def up
			add_attachment :productos, :foto
		end

		def down
			remove_attachment :productos, :foto
		end
	end
end
