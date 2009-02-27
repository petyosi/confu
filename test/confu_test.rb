require 'test_helper'

class ConfuTest < ActiveSupport::TestCase

  test "The config instance should respond to given content" do
    @c = Confu::Config.new(:a => 'a')
    assert_equal 'a', @c.a
  end

  test "Should throw error if not defined" do
    @c = Confu::Config.new(:a => 'a')
    assert_raise NoMethodError do
      @c.b
    end
  end

  test "Should parse files" do
    Confu.load_config_files(File.join(File.dirname(__FILE__), 'configs'))
    assert ::SampleConfig
  end

end
