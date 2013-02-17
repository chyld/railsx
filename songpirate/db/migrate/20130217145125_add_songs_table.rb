class AddSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :filename
      t.string :image
      t.timestamps
    end
  end
end
