class AddMembershipableIdToMembership < ActiveRecord::Migration[5.2]
  def change
    add_column :memberships, :membershipable_id , :integer
    add_column :memberships, :membershipable_type , :string
  end
end
