name 'mysql'
version '5.6.16'

dependency 'cmake'

source :url => "http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-#{version}.tar.gz",
       :md5 => "1d3d91e8459c719bbef7c97bb499634d"

relative_path 'mysql-5.6.16'

configure_env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include -L/lib -L/usr/lib",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib",
  "PATH" => "#{install_dir}/embedded/bin:#{ENV["PATH"]}"
}

cmake = "#{install_dir}/embedded/bin/cmake"

build do
  command (
           [
             cmake,
             "-DCMAKE_INSTALL_PREFIX=#{install_dir}"
           ]
           )
  command "make"
  command "make install DESTDIR=#{install_dir}"
end
