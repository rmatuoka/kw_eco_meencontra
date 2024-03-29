class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :e_mail
      t.text :message
      t.integer :provider_id
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
