class CreateEmailsTable < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :name
      t.datetime :date
      t.datetime :time
      t.string :onlinemail
      t.string :title
      t.string :message


      t.timestamps
    end
  end
end

