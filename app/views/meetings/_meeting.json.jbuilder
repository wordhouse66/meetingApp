json.extract! meeting, :id, :start_time, :end_time, :client_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
