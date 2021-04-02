#!/bin/sh

set -e

rsync -av $HOME/.zshrc                          $DOTFILES_DIR/zsh/
rsync -av $HOME/.config/zsh/*                   $DOTFILES_DIR/zsh/ --exclude plugins/
rsync -av $HOME/.tmux.conf                      $DOTFILES_DIR/tmux/
rsync -av $HOME/.config/alacritty/alacritty.yml $DOTFILES_DIR/alacritty/
rsync -av $HOME/.czrc                           $DOTFILES_DIR/commitizen/
rsync -av $HOME/.config/i3/config               $DOTFILES_DIR/i3/
rsync -av $HOME/.config/nvim/*                  $DOTFILES_DIR/nvim/ --exclude plugged/
rsync -av $HOME/.config/i3status/config         $DOTFILES_DIR/i3status/
rsync -av $HOME/.xinitrc                        $DOTFILES_DIR/.xinitrc
