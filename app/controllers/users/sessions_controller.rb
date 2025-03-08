class Users::SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)

    respond_to do |format|
      format.turbo_stream { redirect_to after_sign_in_path_for(resource) }
      format.html { redirect_to after_sign_in_path_for(resource) }
    end
  end
end
