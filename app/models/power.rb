class Power < ApplicationRecord
    has_many :heroines
    has_many :heroines, through: :heroinepowers
end
