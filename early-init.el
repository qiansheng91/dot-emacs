(setq
 ;; Do not make installed packages available when Emacs starts (we use `straight')
 package-enable-at-startup nil
 ;; Avoid garbage collections during startup, this will be overwritten by `+minemacs--gc-tweaks-h'
 gc-cons-threshold most-positive-fixnum
 ;; Prefer loading newer files
 load-prefer-newer t
 ;; Explicitly set modes disabled in `default-frame-alist' to nil
 tool-bar-mode nil
 menu-bar-mode nil
 scroll-bar-mode nil
 ;; Set mode-line format to prevent it from showing at startup
 mode-line-format nil)

(scroll-bar-mode -1)
(setq native-comp-jit-compilation nil)
(setq package-enable-at-startup nil)

(setenv "LIBRARY_PATH"
	(string-join
	 '("/opt/homebrew/opt/gcc/lib/gcc/current"
	   "/opt/homebrew/opt/libgccjit/lib/gcc/current")
	 ":"))

(when (featurep 'ns)
  (push '(ns-transparent-titlebar . t) default-frame-alist))

