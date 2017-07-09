class CreateTherapistIssuesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :therapist_issues, id: false do |t|
      t.integer :therapist_id
      t.integer :issue_id
    end
  end
end
