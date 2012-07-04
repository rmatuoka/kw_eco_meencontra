class Provider < ActiveRecord::Base
  #attr_accessible :name, :last_name, :address, :city, :state, :zip_code, :number, :phone, :mobile, :e_mail, :category, :business, :area_of_​​expertise, :business_phone, :availability, :performance_field
  has_many :contacts 
end
