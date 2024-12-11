(use-package emacs
  :general
  (leader-def
    :states 'normal
    :keymaps 'org-mode-map
    "o" '(:ignore t :which-key "org")
    "oy" '(org-store-link :which-key "store link")
    "op" '(org-insert-link :which-key "insert link"))

  :config
  (setq org-todo-keyword-faces
      '(("TODO" . org-warning)
        ("IN-PROGRESS" . "yellow")
        ("WAITING" . "orange")
        ("DONE" . "green")
        ("CANCELED" . (:foreground "blue" :weight bold))))
  (setq org-list-allow-alphabetical t))


(provide 'init-org)
