require "spec_helper"

describe Confu do
  let(:config) { Confu::Config.new(:foo => "bar") }

  it "should respond to given content" do
    config.foo.should == "bar"
  end

  it "should throw error if not defined" do
    expect {config.bar}.to raise_error NoMethodError
  end

  it "should parse files"
end
