require_relative 'appointment.rb'
require_relative 'doctor.rb'

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def appointments
        Appointment.all.find_all do |appointment_instance|
            appointment_instance.patient == self 
        end 
    end 

    def doctors
        appointments.collect do |appointment|
            appointment.doctor
        end
    end


end 
