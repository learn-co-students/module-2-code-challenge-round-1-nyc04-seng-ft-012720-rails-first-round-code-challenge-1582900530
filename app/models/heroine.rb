class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers

    validates_presence_of :name
    validates_presence_of :super_name
    # uniqueness :super_name
end
