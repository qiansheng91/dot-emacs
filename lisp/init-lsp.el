(use-package emacs
  :config
  (add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode)))

(use-package eglot
  :ensure t
  :hook
  ((c-mode c++-mode) . eglot-ensure))

(provide 'init-lsp)
