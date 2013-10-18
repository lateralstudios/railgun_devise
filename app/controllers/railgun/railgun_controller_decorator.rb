module Railgun
  RailgunController.class_eval do
  
  	before_filter :load_interface
    
    def load_interface
    		add_menu_button(:admin, "logout", destroy_admin_session_path, {:method => :delete})
    end
    
  end
end
