class Technology < ActiveRecord::Base
  has_many :courses, :foreign_key => "technology_id"
  has_many :topics, :foreign_key =>  "technology_id"
  attr_accessible :tech, :category


end
