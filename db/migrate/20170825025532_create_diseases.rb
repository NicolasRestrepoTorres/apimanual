class CreateDiseases < ActiveRecord::Migration[5.1]
  def change
    create_table :diseases do |t|
      t.text :sympthoms
      t.boolean :active
      t.string :name

      t.timestamps
    end
  end
end
