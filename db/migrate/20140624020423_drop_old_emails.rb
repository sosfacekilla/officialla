class DropOldEmails < ActiveRecord::Migration
  def change
    drop_table :emails

  end
end
