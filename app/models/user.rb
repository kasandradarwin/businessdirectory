class User < ApplicationRecord
    has_many :businesses, dependent: :destroy
end
