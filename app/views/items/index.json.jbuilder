json.array!(@items) do |item|
  json.extract! item, :id, :quantidade, :produto_id, :pedido_id
  json.url item_url(item, format: :json)
end
