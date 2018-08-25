class AddTeacherToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :teacher, index: true
  end
end
