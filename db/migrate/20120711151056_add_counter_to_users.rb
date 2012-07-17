class AddCounterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :counter, :integer
  end
end
