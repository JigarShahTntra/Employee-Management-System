class CreateAttendences < ActiveRecord::Migration[6.1]
  def change
    create_table :attendences do |t|
      t.datetime :attendence_date
      t.datetime :start_hour
      t.datetime :end_hour
      t.datetime :total_hours

      t.timestamps
    end
  end
end
