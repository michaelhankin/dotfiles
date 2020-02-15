function check_ports --description 'Output a list of processes listening on local internet ports'
  lsof -nP -iTCP:$PORT | grep LISTEN
end
