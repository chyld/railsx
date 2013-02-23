class AddVideosTable < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :views
      t.timestamps
    end
  end
end
