# Generic shell helpers

## Go up two levels
alias ...="cd ../.."

## Go up three levels
alias ....="cd ../../.."

## Print package.json scripts
alias scripts="cat package.json | jq '.scripts'"

## Render README.md with glow
alias readme="cat README.md | glow"
