class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.datetime :starting_date
      t.datetime :finishing_date

      t.timestamps
    end
  end
end
