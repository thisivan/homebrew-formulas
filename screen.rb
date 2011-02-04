require 'formula'

class Screen < Formula
  url 'git://git.savannah.gnu.org/screen.git'
  homepage 'http://www.gnu.org/software/screen/'

  def install
    args = [
      "--prefix=#{prefix}",
      "--mandir=#{man}",
      "--enable-locale",
      "--enable-telnet",
      "--enable-colors256",
      "--enable-rxct_osc"
    ]

    system "./autoconf.sh"
    system "./configure", *args
    system "make"
    system "make install"
  end
end
