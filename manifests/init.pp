class memcached {
  package { memcached: }

  include memcached::munin
}

class memcached::munin {
  munin::plugin { [memcached_multi_bytes, memcached_multi_commands, memcached_multi_conns, memcached_multi_evictions, memcached_multi_items, memcached_multi_memory]: 
    source => "puppet:///memcached/memcached_"
  }  
}
