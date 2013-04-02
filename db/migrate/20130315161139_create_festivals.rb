class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :logo
      t.date :date
      t.text :lineup
      t.text :details
      t.boolean :camping

      t.timestamps
    end
  end
end
