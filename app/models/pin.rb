class Pin < ApplicationRecord
    belongs_to :user
    has_many_attached :images
    validates :name, presence: true
    validates :name, presence: true
    validates :descripcion, length: { in: 1..500}
end
