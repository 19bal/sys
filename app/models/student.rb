class Student < ActiveRecord::Base

  has_secure_password

  attr_accessible :tc, :first_name, :last_name, :email,
    :password, :password_confirmation, :phone_number,
    :image, :gender, :birthday, :status, :point, :address

end
