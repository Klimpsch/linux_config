;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(add-to-list 'load-path "~/.emacs.d/elpa/")
(load "plan9.el")
(use-package smex
       :ensure t)

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(set-fringe-mode 0)


 (use-package org-bullets
    :ensure t
    :config
    (setq org-bullets-bullet-list '("∙"))
    (add-hook 'org-mode-hook 'org-bullets-mode))


(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)


(setq inhibit-startup-screen t)
(global-visual-line-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(menu-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#FFFFE8" :foreground "#101010" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "IBM " :family "IBM Plex Mono")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
