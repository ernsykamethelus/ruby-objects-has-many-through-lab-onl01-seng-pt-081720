class Doctor

  attr_accessor :name, :appointment, :patient
  @@all = []

  def initialize(name)
    @name = name
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
    appointment.patients
  end
end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end