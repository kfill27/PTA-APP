json.extract! teacher, :id, :name, :grade, :section_id, :room, :class_type, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
