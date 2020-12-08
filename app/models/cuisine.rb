class Cuisine < ApplicationRecord
    validates :name, presence: true, length: {maximum: 20}
    validates :price, presence: true, numericality: true
    validates :text, presence: true
    validates :photo, presence: true
end
