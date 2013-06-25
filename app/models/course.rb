class Course < ActiveRecord::Base
  has_many :scheduled_classes, :foreign_key =>  "course_id"
  belongs_to :discount
  belongs_to :technology
  attr_protected



end
