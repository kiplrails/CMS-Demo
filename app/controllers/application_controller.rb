class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_site

  def current_site
    @site = Site.find_by_name(request.subdomains.first)
  end
end
