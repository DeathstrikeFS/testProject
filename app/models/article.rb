class Article < ActiveRecord::Base
  attr_accessible :art_title, :body, :date_posted, :key_stage, :subject, :subtitle, :time_posted, :user_id
  
  belongs_to :users

end
