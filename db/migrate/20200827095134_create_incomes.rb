class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.string :subject
      t.string :memo
      t.integer :money
      t.timestamps
    end
  end
end
