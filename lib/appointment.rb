class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  def initialize(name, patient)
    @name = name
    self.patient = patient
    patient.add_appointment(self)
  end
end
