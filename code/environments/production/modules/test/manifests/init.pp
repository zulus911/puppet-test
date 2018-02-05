class test {
  file { '/tmp/erb_test':
    content => template('test/test.erb'),
  }
  file { '/tmp/test_file':
    source  => 'puppet:///modules/test/test_files',
  } 
  exec { 'cat-template':
    path    => "/usr/bin:/usr/sbin:/bin",
    require => File['/tmp/erb_test'],
    command => 'cat /tmp/erb_test',
  }
  exec { 'cat-file':
    path    => "/usr/bin:/usr/sbin:/bin",
    require => File['/tmp/test_file'],
    command => 'cat /tmp/test_file',
  }

} 
