class CreateExpends < ActiveRecord::Migration[6.0]
  def change
    create_table :expends do |t|
      t.string :subject
      t.string :memo
      t.integer :money
      t.timestamps
    end
  end
end
