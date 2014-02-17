json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :data, :hora, :cliente_id
  json.url pedido_url(pedido, format: :json)
end
