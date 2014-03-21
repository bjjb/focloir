require 'test_helper'
require 'focloir'

describe Focloir do
  it "is a library" do
    Focloir.must_be_kind_of Module
  end

  it "has an executable" do
    executable = Pathname.new(__FILE__).join("../../bin/focloir")
    executable.must_be :executable?
    out, err = capture_subprocess_io do
      lib = executable.join("../../lib")
      system "ruby -I#{lib} #{executable} -h"
    end
    out.must_equal "Hi"
    err.must_be :empty?
  end
end
