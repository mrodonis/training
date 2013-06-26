class PagesController < ApplicationController
  def index
    @featured_items = "true"
    @meta_title = "Quality Authorized Training"
    @entry_title = "<b>TRAINING ESSENTIALS</b> | DISCOUNT QUALITY AUTHORIZED TRAINING"
  end

  def microsoft
    @tech_ids = Technology.find_all_by_category("Microsoft")
    # @course_list = Course.find_all_by_technology_id
    @logo_img = 'microsoft-formatted.jpg'
    @logo_size = '672x156'
    @meta_title = "Quality Authorized Microsoft Training"
    @entry_title = "<b>Training Essentials</b> | Authorized Microsoft Training"
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
