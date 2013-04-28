require "railgun_devise/application"
require "railgun_devise/configuration"
require "railgun_devise/engine"

module RailgunDevise

	class << self
    
    attr_accessor :application
    
    def application
    	@application ||= ::RailgunDevise::Application.new
    end
    
	end
	
	def self.configure
    application.configure
    yield(application.config)
  end

	def self.installed?
		application.installed?
	end
	
end
