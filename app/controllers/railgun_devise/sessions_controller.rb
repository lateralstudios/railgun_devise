class RailgunDevise::SessionsController < Devise::SessionsController

	inherit_railgun
		
	layout "railgun_devise/login"
	
	skip_before_filter :only => :new
	
end
