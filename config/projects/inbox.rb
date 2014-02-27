name 'inbox'
maintainer 'Rob McQueen'
homepage 'https://github.com/systemizer'

replaces        'inbox'
install_path    '/opt/inbox'
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency 'preparation'

# adserver dependencies/components
dependency 'inbox'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
