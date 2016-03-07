class Organization < ApplicationRecord
    #relations
    has_many :admins
    has_many :admin_users, through: :admins, source: :user

    has_many :arbiters
    has_many :arbiter_users, through: :arbiters, source: :user

    has_many :managers
    has_many :manager_users, through: :managers, source: :user

    has_many :subjects
    has_many :subject_users, through: :subjects, source: :user
end
