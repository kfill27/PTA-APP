class Teacher < ApplicationRecord
  has_many :students
  has_many :memberships, as: :membershipable
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Teacher.create! row.to_hash
    end
  end

  def self.search(search)
    where("name ILIKE ? OR grade ILIKE ?", "%#{search}%", "%#{search}%")
  end

  def class_memberships
    Student.joins(:memberships).where(teacher_id: self.id).map(&:memberships)
  end

  def membership_percentage
    (class_memberships.count.to_f / self.students.count.to_f) * 100
  end
end
