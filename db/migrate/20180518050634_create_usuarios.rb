class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :tipo_documento
      t.string :numero_documento
      t.string :nombre
      t.string :telefono
      t.string :celular
      t.string :direccion
      t.string :ciudad
      t.string :departamento
      t.string :pais
      t.string :profesion

      t.timestamps
    end
  end
end
