class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :ammount
      t.string :description
      t.datetime :expense_date
      t.string :approved_by
      t.datetime :approved_date

      t.timestamps
    end
  end
end
