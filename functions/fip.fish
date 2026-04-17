function fip --wraps='ssh' --description 'Forward SSH ports to remote host'
  if test (count $argv) -lt 2
    echo "Usage: fip <host> <port1> [port2] ..."
    return 1
  end
  set host $argv[1]
  set ports $argv[2..]
  for port in $ports
    ssh -f -N -L "$port:localhost:$port" $host; and echo "Forwarding localhost:$port -> $host:$port"
  end
end
