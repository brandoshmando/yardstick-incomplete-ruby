class Superuser < ApplicationRecord
    #relations
    has_one :user
end
