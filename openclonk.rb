class Openclonk < Formula
  head "https://github.com/openclonk/openclonk", :using => :git
  url "https://github.com/openclonk/openclonk/archive/v6.1.tar.gz"
  homepage "http://www.openclonk.org"
  sha256 "4e2e6cefedd4a13523593b285af23b530caa3a98ff02ac4adb215cf32889cb94"

  depends_on "cmake" => :build
  depends_on "jpeg"
  depends_on "libpng"
  depends_on "freetype"
  depends_on "glew"
  depends_on "libogg"
  depends_on "libvorbis"
  depends_on "boost"
  depends_on "freealut"

  needs :cxx11

  def install
    ENV.cxx11
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "true"
  end
end
