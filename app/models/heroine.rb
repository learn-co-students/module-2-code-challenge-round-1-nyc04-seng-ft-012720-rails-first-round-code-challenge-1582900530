class Heroine < ApplicationRecord
    has_many :powers
    has_many :powers, through: :heroinepowers

    validates :name, presence: true
    validates :super_name, presence: true, :uniqueness => { :scope => :super_name}

    Heroine.new.errors[:name].any?
    Heroine.create.errors[:name].any?
    
    Heroine.new.errors[:super_name].any?
    Heroine.create.errors[:super_name].any?
end
