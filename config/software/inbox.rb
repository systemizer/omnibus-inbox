name 'inbox'

dependency 'python'
dependency 'pip'
dependency 'nodejs'
dependency 'mysql'

source :git => 'git://github.com/inboxapp/inbox.git'
version 'master'

relative_path 'inbox'

always_build true

#Helpers
embedded = File.join(install_dir, 'embedded')
bin_dir = File.join(embedded, 'bin')
lib_dir = File.join(embedded, 'lib')
include_dir = File.join(embedded, 'include')
share_dir = File.join(embedded, 'share')

#Paths
code_path = File.join(install_dir,'app')

#Commands
pip = File.join(bin_dir,'pip')

build do
  command([
            pip,
            'install',
            '-r requirements.txt',
            ].join(' '),
          cwd: project_dir
          )
end
