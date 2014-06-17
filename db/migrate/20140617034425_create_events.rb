class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.datetime :time
      t.string :location
      t.string :type
      t.string :website
      t.string :about

      t.timestamps
    end
  end
end
