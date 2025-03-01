class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.selelct{|aptmt| aptmt.patien == self}
  end

  def doctors
    self.appointments.map{|aptmt| aptmt.doctor}      
  end
end