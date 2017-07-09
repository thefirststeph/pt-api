class CreateTherapistsClientLanguagesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :therapists_client_languages, id: false do |t|
      t.integer :therapist_id
      t.integer :client_language_id
    end
  end
end
