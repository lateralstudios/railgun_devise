Railgun::Engine.routes.draw do
	
	devise_for :admin, :module => 'railgun',
		:path => '', :path_names => { :sign_in => 'login', :sign_out => 'logout' }
	
end
