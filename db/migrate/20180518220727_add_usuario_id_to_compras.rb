class AddUsuarioIdToCompras < ActiveRecord::Migration[5.2]
  def change
    add_reference :compras, :usuario, foreign_key: true
  end
end
