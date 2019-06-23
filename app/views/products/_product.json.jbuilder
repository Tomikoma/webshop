json.extract! product, :id, :productName, :productNumber, :productColor, :releaseDate, :manufacturer, :price, :productType, :imgURL, :created_at, :updated_at
json.url product_url(product, format: :json)
