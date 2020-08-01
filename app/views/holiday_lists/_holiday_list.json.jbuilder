json.extract! holiday_list, :id, :name, :date, :created_at, :updated_at
json.url holiday_list_url(holiday_list, format: :json)
