class CreateProviders < ActiveRecord::Migration
  def self.up
    create_table :providers do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :number
      t.string :phone
      t.string :mobile
      t.string :e_mail
      t.string :category
      t.string :business
      t.string :area_of_​​expertise
      t.string :business_phone
      t.string :availability
      t.string :performance_field
      t.timestamps
    end
  end

  def self.down
    drop_table :providers
  end
end
