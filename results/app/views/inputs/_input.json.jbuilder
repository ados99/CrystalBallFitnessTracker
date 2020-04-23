json.extract! input, :id, :age, :gender, :height_feet, :height_inches , :weight, :created_at, :updated_at, :wake_up_time, bed_time
json.url input_url(input, format: :json)
