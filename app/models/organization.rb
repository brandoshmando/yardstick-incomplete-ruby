class Organization < ApplicationRecord
    #relations
    has_and_belongs_to_many :admins
    has_and_belongs_to_many :arbiters
    has_and_belongs_to_many :subjects
    has_and_belongs_to_many :superusers
end
