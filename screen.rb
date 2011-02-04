require 'formula'

class Screen < Formula
  url 'http://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz'
  version 'v4.0.3'
  md5 '8506fd205028a96c741e4037de6e3c42'
  homepage 'http://www.gnu.org/software/screen/'

  def patches
    {
      :p0 => 'https://github.com/mexpolk/homebrew-formulas/raw/master/patches/screen.patch',
    }
  end

  def install
    args = [
      "--prefix=#{prefix}",
      "--mandir=#{man}",
      "--enable-locale",
      "--enable-telnet",
      "--enable-colors256",
      "--enable-rxct_osc"
    ]

    system "./configure", *args
    system "make"
    system "make install"
  end
end
