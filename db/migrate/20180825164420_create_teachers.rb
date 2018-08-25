class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :grade
      t.string :section_id
      t.string :room
      t.string :class_type

      t.timestamps
    end
  end
end
