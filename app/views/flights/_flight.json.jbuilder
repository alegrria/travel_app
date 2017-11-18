json.extract! flight, :id, :departure, :arrival, :departure_time, :arrival_date, :created_at, :updated_at
json.url flight_url(flight, format: :json)
