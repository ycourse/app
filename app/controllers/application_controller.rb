class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    case current_user
      when 'user'
        course_path
      when 'admin'
        root_path
      when 'rubyonrails'
        course_path
      else
        root_path
    end
  end
  
end