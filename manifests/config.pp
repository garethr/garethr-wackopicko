class wackopicko::config {
  file { '/var/www/wackopicko/website/uploads':
    ensure  => directory,
    mode    => '0777',
  }

  exec { 'import wackopicko database':
    command => 'mysql -u root < current.sql',
    unless  => 'mysql -u root -e "USE wackopicko"',
    cwd     => '/var/www/wackopicko',
    path    => ['/usr/bin', '/usr/sbin'],
  }

  apache::vhost { 'wackopicko':
    priority => '10',
    port     => '80',
    docroot  => '/var/www/wackopicko/website',
  }

  php::module { 'mysql':
    notify => Service['httpd'],
  }
}
