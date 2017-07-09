class CreateTherapistTargetIssuesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :therapist_target_issues, id: false do |t|
      t.integer :therapist_id
      t.integer :target_issue_id
    end
  end
end
