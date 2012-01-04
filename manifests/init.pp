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
  Class['apache::packages'] -> Class['subversion::setup']

}
