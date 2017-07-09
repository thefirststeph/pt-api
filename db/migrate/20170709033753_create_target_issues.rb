class CreateTargetIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :target_issues do |t|
      t.string :name
      t.timestamps
    end
  end
end
