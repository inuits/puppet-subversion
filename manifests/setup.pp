# == Class: subversion::setup
#
# === Parameters:
#
# === Actions:
#
# === Requires:
#
# === Sample Usage:
#
class subversion::setup {
  require subversion::params

  file {'subversion-repo-root':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    path   => $subversion::params::repo_root,
  }

}
