class AddStartdateEnddateReasonNotifyToLeave < ActiveRecord::Migration[6.1]
  def change
    add_column :leaves, :startdate, :datetime
    add_column :leaves, :enddate, :datetime
    add_column :leaves, :reason, :string
    add_column :leaves, :notify, :string
  end
end
