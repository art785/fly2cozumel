class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :name
      t.integer :age
      t.string :navy
      t.date :date
      t.integer :folio
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
