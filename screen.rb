require 'formula'

class Screen <Formula
  homepage 'http://www.gnu.org/software/screen'
  url 'git://git.savannah.gnu.org/screen.git', :branch => 'master'
  version '4.01.00devel'


  def install
    cd 'src'
    system "autoconf"
    system "autoheader"
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}", "--infodir=#{info}",
                          "--enable-colors256"
    system "make"
    system "make install"
  end
end
