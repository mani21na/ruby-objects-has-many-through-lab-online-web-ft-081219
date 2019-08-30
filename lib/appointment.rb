class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []

  def initialise(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def patient
    self.all.select{|aptmt| aptmt.patient == self}
  end

  def doctor
    self.all.select{|aptmt| aptmt.dpctor == self}   
  end
end