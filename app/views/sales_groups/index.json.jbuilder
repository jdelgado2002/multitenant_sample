json.array!(@sales_groups) do |sales_group|
  json.extract! sales_group, :id
  json.url sales_group_url(sales_group, format: :json)
end
