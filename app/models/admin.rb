class Admin < ApplicationRecord
    #relations
    belongs_to :user
    has_and_belongs_to_many :organizations
end
