class wackopicko::install {

  include git
  include php::apache2
  include mysql::server

  vcsrepo { '/var/www/wackopicko':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/adamdoupe/WackoPicko.git',
    require  => Class['git'],
  }

}
