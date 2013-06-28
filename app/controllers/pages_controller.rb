class PagesController < ApplicationController

  #include ActionView::Helpers:UrlHelper


  def index
    @featured_items = "true"
    @meta_title = "Quality Authorized Training"
    @entry_title = "<b>TRAINING ESSENTIALS</b> | DISCOUNT QUALITY AUTHORIZED TRAINING"
    @right_nav = "true"
  end

  def microsoft
    if (params[:id].nil? || (params[:id] == "index"))
      params[:id] == nil
      @tech_ids = Technology.find_all_by_category("Microsoft")
      # @course_list = Course.find_all_by_technology_id
      @logo_img = 'microsoft.jpg'
      @logo_size = '672x156'
      @meta_title = "Quality Authorized Microsoft Training"
      @entry_title = "<b>Training Essentials</b> | Authorized Microsoft Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)
    else
      @tech = params[:id]

      @tech_ids = Technology.find_all_by_tech(@tech)
      @logo_img = '/images/microsoft/' + @tech + '.jpg'
      @logo_size = '672x156'
      @meta_title = "Quality Authorized Microsoft " + @tech + " Training"
      @entry_title = "<b>Training Essentials</b> | Authorized Microsoft " + @tech + " Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)

    end


  end

  def cisco
    if (params[:id].nil? || (params[:id] == "index"))
      params[:id] == nil
      @tech_ids = Technology.find_all_by_category("Cisco")
      @logo_img = 'cisco.jpg'
      @logo_size = '672x156'
      @meta_title = "Quality Authorized Cisco Training"
      @entry_title = "<b>Training Essentials</b> | Authorized Cisco Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)
    else
      @tech = params[:id]
      @tech_ids = Technology.find_all_by_tech(@tech)
      @logo_img = 'cisco.jpg'
      @logo_size =  '672x363'
      @meta_title = "Quality Authorized Cisco " + @tech + " Training"
      @entry_title = '<b>Training Essentials</b> | Authorized Cisco ' + @tech + " Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)

    end

  end

  def vmware
    if (params[:id].nil? || (params[:id] == "index"))
      params[:id] == nil
      @tech_ids = Technology.find_all_by_category("VMware")
      @logo_img = 'vmware.jpg'
      @logo_size = '670x200'
      @meta_title = "Quality Authorized VMware Training"
      @entry_title = "<b>Training Essentials</b> | Authorized VMware Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)
    else
      @tech = params[:id]
      @tech_ids = Technology.find_all_by_tech(@tech)
      @logo_img = 'vmware.jpg'
      @logo_size = '670x200'
      @meta_title = "Quality Authorized VMware " + @tech + " Training"
      @entry_title = '<b>Training Essentials</b> | Authorized VMware ' + @tech + " Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)
    end
  end

  def apps
    if (params[:id].nil? || (params[:id] == "index"))
      params[:id] == nil
      @discount_ids = Discount.where("discount_level = ? OR discount_level = ?", "APPS_A", "APPS_B")
      @logo_img = 'apps.jpg'
      @logo_size = '670x200'
      @meta_title = "Quality MS Office & Adobe Application Training"
      @entry_title = "<b>Training Essentials</b> | Application Training"
      @courses = Course.find_all_by_discount_id(@discount_ids)
    else
      @tech = params[:id]
      @tech_ids = Technology.find_all_by_tech(@tech)
      @logo_img = 'apps.jpg'
      @logo_size = '670x200'
      @meta_title = "Quality  " + @tech + " Training"
      @entry_title = '<b>Training Essentials</b> | Authorized VMware ' + @tech + " Training"
      @courses = Course.find_all_by_technology_id(@tech_ids)
    end
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
