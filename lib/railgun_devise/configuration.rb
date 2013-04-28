module RailgunDevise
	class Configuration
		@@defaults = {
			
		}
		
		cattr_accessor :settings
		
		def initialize
			@@settings ||= self.class.get_from_hash(@@defaults)
		end
		
		def self.settings
			@@settings
		end
		
		def method_missing(name, *args, &block)
      self.settings.send(name, *args, &block)
    end
    
    def self.get_from_hash(hash)
    	settings = Railgun::SettingsHash.new
    	hash.each_pair do |key, value|
    		settings[key] = value.is_a?(Hash) ? self.get_from_hash(value) : value
    	end
    	settings
    end
		
	end
end