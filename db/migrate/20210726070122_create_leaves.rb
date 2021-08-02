class CreateLeaves < ActiveRecord::Migration[6.1]
  def change
    create_table :leaves do |t|
      t.string :name
      t.belongs_to :leavetype

      t.timestamps
    end
  end
end
