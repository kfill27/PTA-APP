class Student < ApplicationRecord
  belongs_to :teacher
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Student.create! row.to_hash
    end
  end
end
