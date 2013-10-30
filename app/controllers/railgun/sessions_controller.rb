class Railgun::SessionsController < Devise::SessionsController

	inherit_railgun
		
	layout "login"
	
	skip_before_filter :validate_admin, :only => :new
	
	def after_sign_out_path_for(user)
    new_admin_session_path
  end
	
end
