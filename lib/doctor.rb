class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointments.all.select{|aptmt| aptmt.doctor == self}
  end

  def new_appointment(date, patient)
    Appointments.new(date, patient, self)
  end

  def patients
    self.appointments.each{|aptmt| aptmt.patient}
  end
end