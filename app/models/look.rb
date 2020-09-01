class Look < ApplicationRecord
    belongs_to :user
    has_many :links

    validates :description, length: { in: 0..200 }
    validates :name, length: { in: 0..30 }
    validates :sketch, presence: true
end
