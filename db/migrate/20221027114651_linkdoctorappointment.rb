class Linkdoctorappointment < ActiveRecord::Migration[7.0]
  def change
     add_reference :appointments, :doctor, foreign_key: true
  end
end
