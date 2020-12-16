class Appointment

    attr_accessor :date, :patient, :doctor 

    @@all = []

    def initialize(date, patient, doctor)
        @date = Time.new()
        @date.strftime("%A%B%d")
        @patient = patient
        @doctor = doctor
        @@all << self
    end 

    def self.all
        @@all 
    end 

end 
