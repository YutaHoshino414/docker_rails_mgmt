json.extract! product, :id, :Maker, :Model, :ModelCode, :ProductType, :created_at, :updated_at
json.url product_url(product, format: :json)
