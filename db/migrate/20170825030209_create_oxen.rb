class CreateOxen < ActiveRecord::Migration[5.1]
  def change
    create_table :oxen do |t|
      t.string :name
      t.date :born
      t.boolean :alive
      t.timestamp :passedaway

      t.timestamps
    end
  end
end
