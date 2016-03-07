class User < ApplicationRecord
    #filters
    after_save :generate_token

    #relations
    has_one :token

    has_many :admins
    has_many :admin_organizations, through: :admins, source: :organization

    has_many :arbiters
    has_many :arbiter_organizations, through: :arbiters, source: :organization

    has_many :managers
    has_many :manager_organizations, through: :managers, source: :organization

    has_many :subjects
    has_many :subject_organizations, through: :subjects, source: :organization

    private
    def generate_token
        self.create_token
    end
end
