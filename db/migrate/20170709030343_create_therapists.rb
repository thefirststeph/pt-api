class CreateTherapists < ActiveRecord::Migration[5.0]
  def change
    create_table :therapists do |t|
      t.string :pt_id
      t.string :name
      t.string :title
      t.string :phone
      t.string :street_address
      t.string :locality
      t.string :state
      t.string :zipcode
      t.string :blurb
      t.string :yrs_practice
      t.string :school
      t.string :yr_graduated
      t.string :license_no
      t.string :license_state
      t.string :client_ethnicities
      t.string :client_languages
      t.string :client_ages
      t.string :client_categories
      t.string :treatment_modalities
      t.string :treatment_orientation
      t.string :target_issues
      t.string :issues
      t.string :avg_cost
      t.string :sliding_scale
      t.string :takes_insurance
      t.string :accepted_insurance
      t.string :accepted_payments
      t.timestamps
    end
  end
end
