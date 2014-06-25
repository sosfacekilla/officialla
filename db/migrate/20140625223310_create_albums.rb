class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.string :day
      t.string :date
      t.string :year

      t.timestamps
    end
  end
end
