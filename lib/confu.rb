module Confu
  class Config
    def initialize(content)
      @content = content.symbolize_keys
    end

    def method_missing(id)
      @content[id] or super
    end
  end

  def self.load_config_files(path)
    Dir[File.join(path, '*yml')].each do |file|
      name = File.basename(file, '.yml').camelize + 'Config'
      yml = YAML.load_file(file)[RAILS_ENV]
      Object.const_set(name, Config.new(yml))
    end
  end
end
