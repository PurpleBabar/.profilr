
# composer
alias composer="docker run --rm --interactive --tty --volume $PWD:/app -w="/app" --user 1000:1000 composer"
# php
alias php="docker run --rm --interactive --tty --volume $PWD:/php_exec -w="/php_exec" --user 1000:1000 php:7-alpine3.7 php"

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf ">>> Deleting stopped containers" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf ">>> Deleting untagged images" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'
