# Requires
require 'rails/generators'
require 'rails/generators/migration'

module RailgunDevise
	class InstallGenerator < Rails::Generators::Base

		include Rails::Generators::Migration

		source_root File.expand_path('../templates', __FILE__)

		def self.next_migration_number(path)
      unless @prev_migration_nr
        @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
      else
        @prev_migration_nr += 1
      end
      @prev_migration_nr.to_s
    end

    def run_devise_generator
      generate "devise:install"
    end

	end
end