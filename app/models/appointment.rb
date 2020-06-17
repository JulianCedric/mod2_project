class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :superhero 

    validate :no_murder, :invalid_time_frame 

    def appointment
        @appointment = Appointment.create(appointment_params)
    end

    def appointment_params
        params.require(:appointment).permit!
    end

    def start_time_military
        start_time = 0
        if self.start_ampm == "PM"
            start_time = self.start_time + 12
        else
            start_time = self.start_time
        end
        start_time
    end

    def end_time_military
        end_time = 0
        if self.end_ampm == "PM"
            end_time = self.end_time + 12
        else
            end_time = self.end_time
        end
        end_time
    end

    def invalid_time_frame
        if self.end_time_military <= self.start_time_military
            errors.add(:start_time, "Invalid time-frame. Search for Doctor Strange if you need further assistance.")
        end
    end

    def no_murder 
        if self.description_of_service == "Murder"
            errors.add(:description_of_service, "Forbidden Selection. We've just alerted the Justice League of your ill intentions.")
        end
    end
    

end