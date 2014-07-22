class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :description
      t.string :image
      t.string :color
      t.references :issue, index: true

      t.timestamps
    end
  end
end
