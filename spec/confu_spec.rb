require "spec_helper"

describe Confu do

  it "should respond to given content" do
    @c = Confu::Config.new(:foo => "bar")
    @c.foo.should == "bar"
  end

  it "should throw error if not defined" do
    @c = Confu::Config.new(:foo => "bar")
    expect {@c.bar}.to raise_error NoMethodError
  end

  it "should parse files"
end
