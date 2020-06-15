class User < ApplicationRecord
    has_many :appointments
    has_many :superheros, through: :appointments 

    validates :username, presence: true 
    validates :username, uniqueness: true 
end
