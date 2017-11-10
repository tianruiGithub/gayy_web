class Admins::SessionsController < Devise::SessionsController
  def after_sign_in_path_for(resource)
    manage_introduces_path
  end
end
