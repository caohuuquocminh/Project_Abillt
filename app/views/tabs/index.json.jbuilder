json.array!(@tabs) do |tab|
  json.extract! tab, :id, :name, :infromation
  json.url tab_url(tab, format: :json)
end
