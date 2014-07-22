class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :project, index: true
      t.datetime :insert_date
      t.string :component
      t.string :feature
      t.string :description
      t.string :note
      t.boolean :accepted
      t.datetime :accepted_at

      t.timestamps
    end
  end
end
