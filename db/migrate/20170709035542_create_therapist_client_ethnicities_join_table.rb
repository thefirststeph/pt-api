class CreateTherapistClientEthnicitiesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :therapist_client_ethnicities, id: false do |t|
      t.integer :therapist_id
      t.integer :client_ethnicity_id
    end
  end
end
