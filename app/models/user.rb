class User < ApplicationRecord
    has_many :appointments
    has_many :superheros, through: :appointments 
    has_many :client_users, foreign_key: :customer_id, class_name: 'Hero'
    has_many :user_heros, through: :client_users
    has_many :provider_users, foreign_key: :hrs_id, class_name: 'Hero'
    has_many :customers, through: :provider_users

    validates :username, presence: true 
    validates :username, uniqueness: true 
    validates :name, uniqueness: true 
    validates :intelligence, :strength, :speed, :durability, :power, :combat, numericality: { less_than: 50 }

    has_secure_password

    def customer_appointments
        x = Appointment.all.select do |appt|
            appt.customer_id == self.id
        end
        y = x.sort do |appt1, appt2| 
            appt1.start_time_military <=> appt2.start_time_military
        end
        y
    end

    def hero_appointments
        x = Appointment.all.select do |appt|
            appt.hrs_id == self.id
        end
        y = x.sort do |appt1, appt2| 
            appt1.start_time_military <=> appt2.start_time_military
        end
        y
    end

end
