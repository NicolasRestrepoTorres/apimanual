class CreateMice < ActiveRecord::Migration[5.1]
  def change
    create_table :mice do |t|
      t.string :name
      t.date :born
      t.boolean :alive
      t.timestamp :passedaway

      t.timestamps
    end
  end
end
