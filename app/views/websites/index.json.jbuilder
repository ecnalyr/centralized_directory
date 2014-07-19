json.array!(@websites) do |website|
  json.extract! website, :id, :name, :domain_name, :style
  json.url website_url(website, format: :json)
end
