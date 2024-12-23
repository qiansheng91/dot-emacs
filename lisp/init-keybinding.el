(use-package emacs
  :after (general)
  :general
  (leader-def
	:keymaps 'normal
	"f" '(:ignore t :which-key "file")
	"w" '(:ignore t :which-key "workspaces")
	"p" '(:ignore t :which-key "projects")
	"b" '(:ignore t :which-key "buffer")
	"e" '(:ignore t :which-key "edit")
	"i" '(:ignore t :which-key "insert")
	"v" '(:ignore t :which-key "view")
	"t" '(:ignore t :which-key "tab")
	"s" '(:ignore t :which-key "search")
	"c" '(:ignore t :which-key "code")
	"r" '(:ignore t :which-key "run")))


(use-package emacs
  :general
  (leader-def
	:keymaps 'normal
	;; files
	"ff" '(find-file :which-key "file")
	"fr" '(consult-recent-file :which-key "recentf")

	;; buffer
	"bk" '(kill-current-buffer :which-key "close")
	"bb" '(consult-buffer :which-key "buffers")

	;; view - windows
	"vs" '(split-window-horizontally :which-key "split")
	"vv" '(split-window-vertically :which-key "vertically")
	"vl" '(evil-window-right :which-key "right")
	"vj" '(evil-window-up :which-key "right")
	"vk" '(evil-window-down :which-key "right")
	"vh" '(evil-window-left :which-key "right")
	"vk" '(delete-window :which-key "remove")

	;; view - tab
	"ts" '(tab-switch :which-key "switch")

	;; insert
	"iy" '(consult-yank-pop :which-key "yank")
	"is" '(yas-insert-snippet :which-key "snippet")

	;; project
	"pp" '(projectile-switch-project :which-key "list")
	"pa" '(projectile-add-known-project :which-key "add")

	;; workspace
	"ww" '(persp-switch :which-key "list")
	"ws" '(persp-state-save :which-key "save")
	"wr" '(persp-state-load :which-key "restore")))

(provide 'init-keybinding)
