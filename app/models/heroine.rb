class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers

    validate :must_have_a_name
    validates :name, presence: true

    validate :must_have_a_super_name
    validates :super_name, presence: true

    # def must_have_a_name
    #     if
    # end

    # def must_have_a_super_name
    #     if 
    # end
end
