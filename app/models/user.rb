class User < ApplicationRecord
    #filters
    after_save :generate_token

    #relations
    has_one :token
    has_one :admin
    has_one :arbiter
    has_one :subject

    private
    def generate_token
        self.create_token
    end
end
