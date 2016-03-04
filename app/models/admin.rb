class Admin < ApplicationRecord
    #relations
    belongs_to :user
    belongs_to :organization
end
