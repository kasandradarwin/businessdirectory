class User < ApplicationRecord
    has_secure_password
    has_many :markets
    has_many :businesses, dependent: :destroy
    has_many :classifieds, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_businesses, through: :likes, source: :business

    def full_name
        self.first_name + " " + self.last_name
    end
end
