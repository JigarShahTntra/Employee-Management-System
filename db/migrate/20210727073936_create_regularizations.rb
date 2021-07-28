class CreateRegularizations < ActiveRecord::Migration[6.1]
  def change
    create_table :regularizations do |t|
      t.text :reason
      t.datetime :start_hour
      t.datetime :end_hour

      t.timestamps
    end
  end
end
