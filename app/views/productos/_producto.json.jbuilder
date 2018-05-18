json.extract! producto, :id, :nombre, :descripcion, :tipo, :material, :alto, :ancho, :profundidad, :color, :peso, :ciudad, :empresa, :created_at, :updated_at
json.url producto_url(producto, format: :json)
