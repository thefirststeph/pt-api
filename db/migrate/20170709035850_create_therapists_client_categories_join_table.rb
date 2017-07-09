class CreateTherapistsClientCategoriesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :therapists_client_categories, id: false do |t|
      t.integer :therapist_id
      t.integer :client_category_id
    end
  end
end
