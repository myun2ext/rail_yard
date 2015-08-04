json.array!(@app_model_columns) do |app_model_column|
  json.extract! app_model_column, :id, :app_model_id, :name, :type, :allow_nil, :unique, :index
  json.url app_model_column_url(app_model_column, format: :json)
end
