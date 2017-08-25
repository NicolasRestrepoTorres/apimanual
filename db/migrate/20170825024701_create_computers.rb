class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.string :brand
      t.integer :architecture
      t.timestamp :bought
      t.decimal :ram

      t.timestamps
    end
  end
end
