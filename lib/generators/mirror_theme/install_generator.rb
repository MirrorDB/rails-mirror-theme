require 'colorize'
module MirrorTheme
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Create the auxiliaries files, which can be customized & fit MaterializeCSS to Rails Turbo-Links'
      def copy_initializer
        add_application_asset
        add_components
      end

      # It update the application.js & application.scss
      def add_application_asset
        add_material_fit_assets
        add_mirror_assets
      end

      # Insert MaterialFit events & styles to application
      def add_material_fit_assets
        puts 'MaterialFit events & styles added to your app/assets/javascripts/application.js & app/assets/stylesheets/application.scss'.colorize(:light_green)
        puts 'Those files are fixing MaterializeCSS to Turbo-Links, with you need to customize it, contact-us!'.colorize(:light_yellow)
      end

      # Insert Mirror events & styles to application
      def add_mirror_assets
        puts 'MirrorDB events & styles added to your app/assets/javascripts/application.js & app/assets/stylesheets/application.scss'.colorize(:light_green)
        puts 'Those files are editable, you can customize those components, let us know if you need it to improve MirrorAssetsApplication'.colorize(:light_yellow)
      end

      # It automatically create the Layouts/Components which simplify the MaterializeCSS usage on Rails projects using render function
      def add_components
        puts 'Adding the .html.slim components on app/views/layouts/components'.colorize(:light_blue)
        puts 'app/views/layouts/components created'.colorize(:light_green)
        puts 'checkout your app/views/layouts/components folders, you can customize those components. And those components are called by render function'.colorize(:light_yellow)
      end
    end
  end
end