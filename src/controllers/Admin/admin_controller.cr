require "jasper_helpers"

class AdminController < Amber::Controller::Base
  include JasperHelpers
  LAYOUT = "admin.ecr"


  def current_user
    context.current_user
  end

  def signed_in?
    current_user ? true : false
  end

  private def redirect_signed_out_user
    unless signed_in?
      flash[:info] = "Must be logged in"
      redirect_to "/signin"
    end
  end

  private def format_date( date : Time | Nil )
    t = Time.parse("2018-07-06 16:00:57 UTC", "%F %T %z");
    t.to_s("%B %C, %Y")
  end
end