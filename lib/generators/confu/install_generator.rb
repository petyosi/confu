module Confu
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates example config/site/app.yml"

      def copy_config
        template "app.yml", "config/site/app.yml"
      end
    end
  end
end
