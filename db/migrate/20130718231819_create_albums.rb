class CreateAlbums < ActiveRecord::Migration
  def change
    drop_table :albums
    create_table :albums do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
