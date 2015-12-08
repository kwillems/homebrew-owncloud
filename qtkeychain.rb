require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Qtkeychain < Formula
  homepage 'https://github.com/frankosterfeld/qtkeychain'
  head 'https://github.com/frankosterfeld/qtkeychain.git', :using => :git
  url 'https://github.com/frankosterfeld/qtkeychain/archive/0.5.tar.gz'
  sha1 'e4cf4b54b81d24b0ca56a2b94007ff5e85658b5d'

  depends_on 'cmake' => :build
  # depends on Qt, but we want to accept a system Qt as well. How?

  def install
    system "cmake", ".", "-DCMAKE_PREFIX_PATH=/usr/local/opt/qt5", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test qtkeychain`.
    system "false"
  end
end