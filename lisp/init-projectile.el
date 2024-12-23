(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (setq projectile-enable-caching t)
  (setq projectile-indexing-method 'alien)
  (setq projectile-generic-command "rg --files --hidden")
  (setq projectile-project-root-files-bottom-up '(".git" ".projectile" "Makefile")))


(use-package perspective
  :bind
  ("C-x C-b" . persp-list-buffers)         ; or use a nicer switcher, see below
  :custom
  (persp-mode-prefix-key (kbd "C-c M-p"))  ; pick your own prefix key here
  :init
  (persp-mode)
  :config
  (add-hook 'kill-emacs-hook #'persp-state-save)
  :general
  (leader-def 'normal
	"op" '(persp-switch :which-key "workspace")
	"w" '(:ignore t :which-key "workspace")
	"ws" '(persp-save :which-key "save")))

(provide 'init-projectile)
