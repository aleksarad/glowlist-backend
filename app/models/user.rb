class User < ApplicationRecord
    has_secure_password

    has_many :looks, -> { order('created_at DESC') }, dependent: :destroy

    validates :username, uniqueness: { case_sensitive: true }
    validates :username, presence: true
    validates :facechart, presence: true
    validates :background_color, presence: true

    validates :username, length: { in: 1..16 }
    validates :password, length: { in: 1..16 }

    accepts_nested_attributes_for :looks
end
