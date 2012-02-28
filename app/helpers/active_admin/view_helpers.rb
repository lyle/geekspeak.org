module ActiveAdmin::ViewHelpers
  def status_list  
      I18n.t(:status_list).map { |key, value| [ value, key ] } 
  end
end