class CreateBeds < ActiveRecord::Migration[5.1]
  def change
    create_table :beds do |t|
      t.date :fabricated
      t.boolean :used
      t.text :description

      t.timestamps
    end
  end
end
