module Admin
  class BaseController < ApplicationController
    before_filter :allow_admin

    protected
    def allow_admin
      if !(current_user && current_user.admin)
        flash[:notice] = "Sorry, you are not allowed to access this section."
        redirect_to root_path and return
      end
    end
  end
end