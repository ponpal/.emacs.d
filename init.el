;; Packages

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Hooks

(add-hook 'clojure-mode-hook 'paredit-mode) 
(add-hook 'clojure-mode-hook 'linum-mode)
(add-hook 'emacs-lisp-mode-hook 'auto-complete-mode)

;; Miscellaneous

(setq inhibit-splash-screen t)
(setq pcomplete-ignore-case t)
(put 'dired-find-alternate-file 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; F11 = Full Screen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
      (if (equal 'fullboth current-value)
        (if (boundp 'old-fullscreen) old-fullscreen nil)
        (progn (setq old-fullscreen current-value)
          'fullboth)))))
(global-set-key [f11] 'toggle-fullscreen)

(custom-set-variables
 '(custom-safe-themes (quote ("90b5269aefee2c5f4029a6a039fb53803725af6f5c96036dee5dc029ff4dff60" default))))

;; GUI

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(load-theme 'fogus)

(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)
