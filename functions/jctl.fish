function jctl --wraps='journalctl' --description 'Show system journal errors'
    journalctl -p 3 -xb
end