;;; ~/.doom.d/+keybindings.el -*- lexical-binding: t; -*-

(map!
 ;; Move line
 :n   "C-<down>" ":m . +1"
 :n   "C-<up>" ":m . -2"

 ;; expand region
 :n   "C-@" #'er/expand-region
 :i   "C-@" #'er/expand-region

 ;; Insert mode movement
 :i   "C-b" #'backward-word
 :i   "C-e" #'forward-word

 ;; Copy and Paste
 :i   "C-p" #'yank
 :i   "C-S-v" #'clipboard-yank
 :v   "C-S-c" #'clipboard-kill-ring-save

 )
(map! :leader
      (:prefix-map ("C" . "config files")
       :desc "Doom" "d" #'doom/open-private-config
       :desc "Dotfile Readme" "r" (lambda() (interactive)(find-file "~/.dotfiles/README.org"))
       :desc "Zsh" "z" (lambda() (interactive)(find-file "~/.zshrc"))
       :desc "i3wm" "i" (lambda() (interactive)(find-file "~/.config/i3/config"))
       :desc "Vim" "v" (lambda() (interactive)(find-file "~/.vimrc"))
       :desc "Alacritty" "a" (lambda() (interactive)(find-file "~/.config/alacritty/alacritty.yml"))
       :desc "Polybar" "p" (lambda() (interactive)(find-file "~/.config/polybar/config"))))

;; Move focus
(global-set-key (kbd "C-j") #'evil-window-down)
(global-set-key (kbd "C-h") #'evil-window-left)
(global-set-key (kbd "C-k") #'evil-window-up)
(global-set-key (kbd "C-l") #'evil-window-right)

;; Move focused window
(global-set-key (kbd "C-S-j") #'+evil/window-move-down)
(global-set-key (kbd "C-S-k") #'+evil/window-move-up)
(global-set-key (kbd "C-S-l") #'+evil/window-move-right)
(global-set-key (kbd "C-S-h") #'+evil/window-move-left)

;; move between workspaces
(global-set-key (kbd "C-1") #'+workspace/switch-to-0)
(global-set-key (kbd "C-2") #'+workspace/switch-to-1)
(global-set-key (kbd "C-3") #'+workspace/switch-to-2)
(global-set-key (kbd "C-4") #'+workspace/switch-to-3)
(global-set-key (kbd "C-5") #'+workspace/switch-to-4)
(global-set-key (kbd "C-6") #'+workspace/switch-to-5)
(global-set-key (kbd "C-7") #'+workspace/switch-to-6)
(global-set-key (kbd "C-8") #'+workspace/switch-to-7)
(global-set-key (kbd "C-9") #'+workspace/switch-to-8)

(setq evil-escape-key-sequence "jj")
(setq evil-escape-delay 0.4)
(setq select-enable-clipboard nil)
