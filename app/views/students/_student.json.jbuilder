json.extract! student, :id, :first_name, :last_name, :middle_name, :student_id, :homeroom, :created_at, :updated_at
json.url student_url(student, format: :json)
