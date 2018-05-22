class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tipo
      t.string :material
      t.integer :alto
      t.integer :ancho
      t.integer :profundidad
      t.string :color
      t.integer :peso
      t.string :ciudad
      t.string :empresa

      t.timestamps
    end
  end
end
