module Confu
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        Confu.load_config_files(File.join(::Rails.root, 'config', 'site'))
      end
    end
  end
end
