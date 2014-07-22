class CreateBrowsers < ActiveRecord::Migration
  def change
    create_table :browsers do |t|
      t.string :name
      t.string :version
      t.references :issue, index: true

      t.timestamps
    end
  end
end
