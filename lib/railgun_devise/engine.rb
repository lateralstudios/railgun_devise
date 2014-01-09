module RailgunDevise
  class Engine < ::Rails::Engine
    isolate_namespace Railgun
    
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator.rb')) do |c|
        rails_load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    def self.rails_load(c)
      Rails.configuration.cache_classes ? require(c) : load(c)
    end

  end
end
