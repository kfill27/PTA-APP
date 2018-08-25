class Teacher < ApplicationRecord
  has_many :students
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Teacher.create! row.to_hash
    end
  end

  def self.search(search)
    where("name ILIKE ? OR grade ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
