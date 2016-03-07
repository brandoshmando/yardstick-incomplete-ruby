class Manager < ApplicationRecord
    #relations
    belongs_to :user
    belongs_to :organization

    accepts_nested_attributes_for :user, :organization
end
