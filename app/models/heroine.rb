class Heroine < ApplicationRecord
    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true


    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
end
