class CreateCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :compras do |t|
      t.integer :valor
      t.string :descripcion

      t.timestamps
    end
  end
end
