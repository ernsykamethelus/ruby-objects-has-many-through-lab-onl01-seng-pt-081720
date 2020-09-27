class Patient

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
    appointment.doctor
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

end
