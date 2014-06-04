json.array!(@trees) do |tree|
  json.extract! tree, :id, :type, :variety, :tree_source, :plant_date, :plant_quantity, :notes
  json.url tree_url(tree, format: :json)
end
