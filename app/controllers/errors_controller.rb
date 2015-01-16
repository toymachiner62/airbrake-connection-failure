class ErrorsController < ApplicationController

  skip_before_filter :authenticate_user!
  layout 'error'
  
  def render_403
    respond_to do |format|
      format.html { render template: '/errors/error', status: 403 }
      #format.all { render nothing: true, status: 404 }
    end
  end
 
  def render_404
  	@error_heading = 'Page Not Found'
  	@error_details = 'The page you requested can not be found. Are you sure you have the correct link?'
  
    respond_to do |format|
      format.html { render '/errors/error', status: 404 }
      #format.all { render nothing: true, status: 404 }
    end
  end
 
  def render_422
    respond_to do |format|
      format.html { render template: '/errors/error', status: 422 }
      #format.all { render nothing: true, status: 404 }
    end
  end
 
  def render_500
    @error_heading = 'Something Happened'
  	@error_details = 'An error has occurred. We have already notified someone to fix it.'
  
    respond_to do |format|
      format.html { render '/errors/error', status: 500 }
      #format.all { render nothing: true, status: 500}
    end
  end
end
