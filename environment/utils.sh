# Generic shell helpers

## Go up two levels
alias ...="cd ../.."

## Go up three levels
alias ....="cd ../../.."

## Print package.json scripts
alias scripts="cat package.json | jq '.scripts'"

## Render README.md with glow
alias readme="cat README.md | glow"

# Set window/tab title to working dir on change
function set_win_title() {
  echo -ne "\033]0; $(basename "$PWD") \007"
}
precmd_functions+=(set_win_title)
