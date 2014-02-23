json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :peso, :empresa_id, :category_id
  json.url produto_url(produto, format: :json)
end
