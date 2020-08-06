class User < ApplicationRecord
    has_many :looks, dependent: :destroy

    validates :username, uniqueness: { case_sensitive: true }
    validates :username, presence: true

    accepts_nested_attributes_for :looks
end
