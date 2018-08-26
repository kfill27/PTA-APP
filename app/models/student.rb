class Student < ApplicationRecord
  belongs_to :teacher
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      student_details = row.to_hash.merge!(teacher_id: Teacher.find_by(section_id: row['homeroom']).id)
      Student.create!(student_details)
    end
  end

  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
