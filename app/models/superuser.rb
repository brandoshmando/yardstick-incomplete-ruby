class Superuser < ApplicationRecord
    #relations
    has_one :user
    has_and_belongs_to_many :organizations
end
