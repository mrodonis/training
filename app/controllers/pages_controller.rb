class PagesController < ApplicationController
  def index

  end

  def microsoft
    @course_list = Course.find_all_by_category 'Microsoft'
    @logo_img = 'microsoft-formatted.jpg'
    @logo_size = '672x156'


  end

  def cisco
    @logo_img = 'cisco-formatted.jpg'
    @logo_size =  '672x363'
  end

  def vmware
  end

  def apps
  end

  def business
  end

  def prepaid
  end

  def certify
  end

  def contact
  end

  def audit
  end

end
