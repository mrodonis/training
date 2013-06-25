class Discount < ActiveRecord::Base
  has_many :courses, :foreign_key => "discount_level"
  attr_protected

end
