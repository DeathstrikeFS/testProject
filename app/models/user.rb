class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :surname, :username
end
