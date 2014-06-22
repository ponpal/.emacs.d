;; Packages

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Hooks

(add-hook 'clojure-mode-hook 'paredit-mode) 
(add-hook 'emacs-lisp-mode-hook 'auto-complete-mode)

;; Miscellaneous

(setq inhibit-splash-screen t)
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 '(custom-safe-themes (quote ("53c542b560d232436e14619d058f81434d6bbcdc42e00a4db53d2667d841702e" default))))
(custom-set-faces)

;; GUI

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(load-theme 'ritchie)
