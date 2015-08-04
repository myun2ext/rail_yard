json.array!(@app_gems) do |app_gem|
  json.extract! app_gem, :id, :name, :version
  json.url app_gem_url(app_gem, format: :json)
end
