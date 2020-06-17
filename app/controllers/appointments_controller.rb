class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new 
  end

#   def appointment
#     @appointment = Appointment.create(appointment_params)
# end


  def create 

  end


  def appointment_params
    params.require(:appointment).permit!
  end


end
