;; Packages

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Hooks

(add-hook 'clojure-mode-hook 'paredit-mode) 
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'visual-line-mode)

(add-hook 'clojure-mode-hook 'show-paren-mode)
(add-hook 'emacs-lisp-mode-hook 'auto-complete-mode)

(add-hook 'java-mode-hook (lambda ()
                                (setq c-basic-offset 4
                                      tab-width 4
                                      indent-tabs-mode t)))

;; Cider config

(setq nrepl-hide-special-buffers t)

;; Org-mode config

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-support-shift-select t)

;; Miscellaneous

(setq inhibit-splash-screen t)
(setq initial-scratch-message "")
(blink-cursor-mode 0)
(setq pcomplete-ignore-case t)
(put 'dired-find-alternate-file 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p)

(defun lambda-as-lambda (mode pattern)
  (font-lock-add-keywords
   mode `((,pattern
           (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                     "λ" 'decompose-region)))))))

(lambda-as-lambda 'clojure-mode "(\\(\\<fn\\>\\)")

;; GUI

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'mccarthy)
