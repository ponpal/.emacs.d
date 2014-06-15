;; GUI

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Packages

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Miscellaneous

(setq inhibit-splash-screen t)
(put 'dired-find-alternate-file 'disabled nil)
