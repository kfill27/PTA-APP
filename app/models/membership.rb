class Membership < ApplicationRecord
  belongs_to :membershipable, polymorphic: true
end
