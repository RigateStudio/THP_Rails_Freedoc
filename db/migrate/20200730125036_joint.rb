class Joint < ActiveRecord::Migration[5.2]
  def change #connecte les tableaux entre eux
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end

end
