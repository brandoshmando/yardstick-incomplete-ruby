class Token < ApplicationRecord
    #relations
    belongs_to :user

    #filters
    before_create :generate_token

    private

    def generate_token
        self.value = loop do
            random_token = SecureRandom.urlsafe_base64(nil, false)
            break random_token unless self.class.exists?(value: random_token)
        end
    end
end
