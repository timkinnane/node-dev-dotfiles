## Kill ports in use by process
killport () {
  lsof -P | grep ":$@" | awk '{print $2}' | xargs kill -9 
}
