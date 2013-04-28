module RailgunDevise
	class Application
	
		attr_accessor :config
		
		def config
      self.config = Configuration.new unless @config
      @config
    end
		
		def configure
			self.config ||= Configuration.new
		end
		
		def installed?
			class_exists?("Admin")
		end
		
		def class_exists?(class_name)
			klass = Module.const_get(class_name)
		  return klass.is_a?(Class)
		rescue NameError
		  return false
		end
	end
end