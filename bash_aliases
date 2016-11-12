# GIT
alias gacp="git add . && git commit --allow-empty-message && git push origin"
alias gac="git add . && git commit --allow-empty-message"
alias gpull="git pull origin"

# LARAVEL
alias laratest="php artisan config:clear && phpunit"
alias laratestrand="php artisan config:clear && $(pwd)/vendor/fiunchinho/phpunit-randomizer/bin/phpunit-randomizer --order rand"
alias pacc="php artisan config:cache"
alias pacl="php artisan config:clear"
alias pas="php artisan serve"

# SYSTEM
alias updatesys="sudo apt-get update && sudo apt-get upgrade -y"
