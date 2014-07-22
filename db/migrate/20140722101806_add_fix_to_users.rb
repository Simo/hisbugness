class AddFixToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :issue, index: true
  end
end
