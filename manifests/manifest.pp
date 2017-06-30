exec { 'apt-update': #exec resource named 'apt-update'
    command => '/usr/bin/apt-get update' # commamnd this resouce will run
}

package { 'apache2':
    require => Exec['apt-update'],
    ensure  => installed
}

service { 'apache2':
    ensure => running
}

package { "mysql-server":
    require => Exec['apt-update'],
    ensure => installed
}

service { "mysql":
    ensure => running
}

package { "php5":
  require => Exec["apt-update"],
  ensure  => installed
}

file { "/var/www/html/info.php":
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package['apache2']
}