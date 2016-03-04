class Organization < ApplicationRecord
    #relations
    has_many :admins
    has_many :users, through: :admins

    has_many :arbiters
    has_many :users, through: :arbiters

    has_many :managers
    has_many :users, through: :managers

    has_many :subjects
    has_many :users, through: :subjects
end
