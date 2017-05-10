class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :check_subdomain

  def check_subdomain
    if Rails.env.production?
      canonical_hostname = 'benjamin.crouzier.com'
      if request.subdomain != 'benjamin'
        redirect_to host: canonical_hostname, controller: params[:controller], action: params[:action], status: :moved_permanently
      end
    end
  end
end
