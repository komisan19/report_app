json.extract! report, :id, :title, :context, :created_at, :updated_at
json.url report_url(report, format: :json)
