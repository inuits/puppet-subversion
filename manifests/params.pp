# Class: subversion::params
#
# Parameters
#   - $parameter_name
#       Parameter description
class subversion::params(
  $repo_root = '/var/svn'
) {

  $package = $::operatingsystem ? {
    /(?i:Debian|Ubuntu)/ => [ 'subversion', 'subversion-tools' ],
    /(?i:CentOS|RedHat)/ => [ 'subversion' ],
    default              => [ 'subversion' ],
  }

}
