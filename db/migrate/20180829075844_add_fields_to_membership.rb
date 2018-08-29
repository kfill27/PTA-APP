class AddFieldsToMembership < ActiveRecord::Migration[5.2]
  def change
    change_table :memberships do |t|
      t.rename :name, :first_name
      t.string :last_name
    end
  end
end
