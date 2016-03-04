class User < ApplicationRecord
    #filters
    after_save :generate_token

    #relations
    has_one :token

    has_many :admins
    has_many :organizations, through: :admins

    has_many :arbiters
    has_many :organizations, through: :arbiters

    has_many :managers
    has_many :organizations, through: :managers

    has_many :subjects
    has_many :organizations, through: :subjects

    private
    def generate_token
        self.create_token
    end
end
