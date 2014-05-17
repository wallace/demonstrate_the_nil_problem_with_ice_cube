json.array!(@sample_models) do |sample_model|
  json.extract! sample_model, :id, :schedule
  json.url sample_model_url(sample_model, format: :json)
end
