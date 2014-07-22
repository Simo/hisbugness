class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.boolean :implemented
      t.datetime :implemented_at
      t.string :effort
      t.boolean :solved
      t.datetime :solved_at

      t.timestamps
    end
  end
end
