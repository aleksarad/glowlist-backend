class User < ApplicationRecord
    has_secure_password

    has_many :looks, -> { order('created_at DESC') }, dependent: :destroy

    # validates :username, uniqueness: { case_sensitive: true }
    # validates :username, presence: true

    accepts_nested_attributes_for :looks
end
