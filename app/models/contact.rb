class Contact < ActiveRecord::Base
   validates_presence_of :full_name, :email, :phone_number, :address
end
