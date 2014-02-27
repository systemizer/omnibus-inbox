name 'cmake'
version '2.8.12.2'

source :url => "http://www.cmake.org/files/v2.8/cmake-#{version}.tar.gz",
       :md5 => "17c6513483d23590cbce6957ec6d1e66"

relative_path "cmake-#{version}"

build do
  command "./configure --prefix=#{install_dir}/embedded"
  command "make"
  command "make install"
end
