class ApplicationController < ActionController::Base
  include Pagy::Backend

  protected

  def after_sign_in_path_for(resource)
    root_path
  end

  def respond_to_on_destroy
    respond_to do |format|
      format.turbo_stream { redirect_to after_sign_out_path_for(resource_name) }
      format.all { head :no_content }
      format.any(*navigational_formats) { redirect_to after_sign_out_path_for(resource_name) }
    end
  end
end
