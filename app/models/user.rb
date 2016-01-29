class User < ApplicationRecord
    #filters
    after_save :generate_token

    #relations
    has_one :token
    has_many :admins
    has_many :arbiters
    has_many :subjects

    private
    def generate_token
        self.create_token
    end
end
