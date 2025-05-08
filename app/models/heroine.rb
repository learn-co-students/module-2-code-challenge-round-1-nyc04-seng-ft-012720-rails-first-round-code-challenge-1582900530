class Heroine < ApplicationRecord
     has_many :heroinepowers
     has_many :powers, through: :heroinepowers
end
