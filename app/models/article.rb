class Article < ActiveRecord::Base
  attr_accessible :art_title, :body, :date_posted, :subtitle, :time_posted, :user_id

  belongs_to :users
 
  validates :body, :length => { :maximum => 140 }
end
