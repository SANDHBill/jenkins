class{ 'nginx':}

nginx::resource::upstream { 'jenkins':
    members => [
        'localhost:8080',
    ],
}

nginx::resource::vhost { 'myapp.example.com':
    proxy => 'http://jenkins',
}

