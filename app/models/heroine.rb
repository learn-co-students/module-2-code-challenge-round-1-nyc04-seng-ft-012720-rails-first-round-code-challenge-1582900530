class Heroine < ApplicationRecord
    validates :name, presence: true
    validates_uniqueness_of :super_name
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
end
