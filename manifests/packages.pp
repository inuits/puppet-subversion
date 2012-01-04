# == Class: subversion::packages
#
# Description of subversion::packages
#
# === Parameters:
#
# === Actions:
#
# === Requires:
#
# === Sample Usage:
#
class subversion::packages {
  require apache::params

  @package {$subversion::params::package:
    ensure => installed,
    alias  => 'subversion',
  }
  realize(Package[$subversion::params::package])

}
