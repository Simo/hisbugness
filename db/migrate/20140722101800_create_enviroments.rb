class CreateEnviroments < ActiveRecord::Migration
  def change
    create_table :enviroments do |t|
      t.string :descrizione
      t.string :address
      t.references :project, index: true
      t.references :issue, index: true

      t.timestamps
    end
  end
end
