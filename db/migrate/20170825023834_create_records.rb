class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.date :year
      t.float :rating
      t.integer :sales

      t.timestamps
    end
  end
end
