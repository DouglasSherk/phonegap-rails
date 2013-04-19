require 'rails/generators'

module PhonegapRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Create config file"
      source_root File.expand_path('../templates', __FILE__)
      
      def create_config_file
        copy_file "config/phonegap_rails.yml"
      end
      
      def create_app_phonegap_dir
        empty_directory Rails.root.join("app/phonegap")
      end
      
      def create_android_dir
        empty_directory Rails.root.join("app/phonegap/android")
      end
      
      def create_ios_dir
        empty_directory Rails.root.join("app/phonegap/ios")
      end
      
    end
  end
end