Railgun::Engine.routes.draw do
	
	devise_for :admins if RailgunDevise.installed?

end
