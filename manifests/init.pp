# == Class: subversion
#
# Description of subversion
#
# === Parameters:
#
# === Actions:
#
# === Requires:
#
# === Sample Usage:
#
class subversion {

  include subversion::packages
  include subversion::setup
  Class['subversion::packages'] -> Class['subversion::setup']

}
