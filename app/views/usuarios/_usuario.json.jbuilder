json.extract! usuario, :id, :tipo_documento, :numero_documento, :nombre, :telefono, :celular, :direccion, :ciudad, :departamento, :pais, :profesion, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
