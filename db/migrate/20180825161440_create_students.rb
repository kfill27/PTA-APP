class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :student_id
      t.string :homeroom

      t.timestamps
    end
  end
end
