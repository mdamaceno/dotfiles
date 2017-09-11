# GIT
alias gacp="git add . && git commit --allow-empty-message && git push origin"
alias gac="git add . && git commit --allow-empty-message"
alias gpull="git pull origin"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nah="git reset --hard && git clean -df"

# LARAVEL
alias laratest="php artisan config:clear && phpunit"
alias laratestrand="php artisan config:clear && $HOME/.composer/vendor/fiunchinho/phpunit-randomizer/bin/phpunit-randomizer --colors --order rand"
alias pacc="php artisan config:cache"
alias pacl="php artisan config:clear"
alias pas="php artisan serve"
alias composer="docker run -v $(pwd):/app -w /app composer"

# PHPUNIT
alias phpunit=vendor/bin/phpunit

# SYSTEM
alias updatesys="sudo apt update && sudo apt upgrade -y"
alias tmux="TERM=screen-256color-bce tmux"
alias weather="curl -s \"http://wttr.in/Juiz+de+Fora?lang=pt\""
alias _='sudo'

# DOCKER
alias start-dunasnet="cd $HOME/Projects/www/devilbox && docker-compose up php httpd firebird && cd -"
alias stop-dunasnet="cd $HOME/Projects/www/devilbox && docker-compose down && cd -"
alias restart-dunasnet="cd $HOME/Projects/www/devilbox && docker-compose restart && cd -"
