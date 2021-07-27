class CreateNotices < ActiveRecord::Migration[6.1]
  def change
    create_table :notices do |t|
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
