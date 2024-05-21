## Search the current directory for string recursively
search () {
  grep -rni --exclude-dir={node_modules,.git} ":$*" .
}
