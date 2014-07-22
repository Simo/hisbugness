class CreateComplexities < ActiveRecord::Migration
  def change
    create_table :complexities do |t|
      t.string :description
      t.string :image
      t.string :color
      t.references :issue, index: true

      t.timestamps
    end
  end
end
