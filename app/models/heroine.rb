class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers

    validates :name, presence: true
    validates :super_name, presence: true
    with_options if: :present do |super_name| 
        super_name.validates :super_name, uniqueness: true
    end

    def present
        presence
    end
end
