class CreateDucks < ActiveRecord::Migration[5.1]
  def change
    create_table :ducks do |t|
      t.string :name
      t.integer :model
      t.string :color

      t.timestamps
    end
  end
end
