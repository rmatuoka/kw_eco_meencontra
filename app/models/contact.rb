class Contact < ActiveRecord::Base
  #attr_accessible :name, :e_mail, :message, :provider_id
  belongs_to :provider
end
