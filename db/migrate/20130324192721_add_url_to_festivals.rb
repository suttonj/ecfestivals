class AddUrlToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :url, :text
  end
end
