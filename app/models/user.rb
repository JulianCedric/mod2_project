class User < ApplicationRecord
    has_many :appointments
    has_many :superheros, through: :appointments 
    has_many :client_users, foreign_key: :customer_id, class_name: 'Hero'
    has_many :user_heros, through: :client_users
    has_many :provider_users, foreign_key: :hrs_id, class_name: 'Hero'
    has_many :customers, through: :provider_users

    validates :username, presence: true 
    validates :username, uniqueness: true 

    has_secure_password
end
