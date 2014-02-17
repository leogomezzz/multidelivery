json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :nome, :descricao
  json.url categorium_url(categorium, format: :json)
end
