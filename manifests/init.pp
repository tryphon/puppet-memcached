class memcached {
  package { memcached: }

  include memcached::munin
}

class memcached::munin {
  munin::plugin { [memcached_bytes, memcached_commands, memcached_conns, memcached_evictions, memcached_items, memcached_memory]: 
    source => "puppet:///memcached/memcached_"
  }  
}
