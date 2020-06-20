;; dimmer
(use-package! dimmer
  :config (dimmer-mode))

;; company completion
(set-company-backend! '(php-mode
                        python-mode
                        js-mode
                        org-mode
                        css-mode)
  '(:separate company-files
    company-yasnippet))

;; projectile
(setq projectile-project-search-path '("~/code/"))

;; org mode
(setq org-directory "~/Documents/org-notes")
(setq org-noter-notes-search-path '("~/Documents/org-notes/"))
