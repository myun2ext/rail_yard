json.array!(@app_models) do |app_model|
  json.extract! app_model, :id, :name
  json.url app_model_url(app_model, format: :json)
end
