class ScheduledClass < ActiveRecord::Base
  belongs_to :course
  attr_accessible *column_names


end
