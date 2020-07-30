class City < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :city, foreign_key: true #table Doctors, attribut patients
    add_reference :patients, :city, foreign_key: true #table Doctors, attribut patients
  end
end
