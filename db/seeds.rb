# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = Usuario.create(:id => 1, :tipo_documento => "Cedula", :numero_documento => "1234567", :nombre => "Felipe", :telefono => "1234567", :celular => "1234567", :direccion => "cra 67", :ciudad => "Armenia", :departamento => "Quindio", :pais => "Colombia", :profesion => "Estudiante", :email => "pipe.r6@hotmail.com", :password => "123456")
u.add_role "admin"