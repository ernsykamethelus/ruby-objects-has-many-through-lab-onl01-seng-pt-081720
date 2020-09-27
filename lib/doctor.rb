class Doctor

  attr_accessor :name, :appointment, :patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
    appointment.patients
  end
end

  def new_appointment(patient, self, date)
    Appointment.new(patient, self, date)
  end
end