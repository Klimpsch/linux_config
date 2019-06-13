;;; package --- Summary
;;; Commentary:
(package-initialize)

(require 'package)
(require 'use-package)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(require 'eyebrowse)
;; transient keymap used once cycling starts
(setq buffer-flip-map
      (let ((map (make-sparse-keymap)))
        (define-key map (kbd "M-<tab>")   'buffer-flip-forward) 
        (define-key map (kbd "M-S-<tab>") 'buffer-flip-backward)
        (define-key map (kbd "M-ESC")     'buffer-flip-abort)
        map))

(use-package org-bullets
    :ensure t
    :config
    (setq org-bullets-bullet-list '("∙"))
    (add-hook 'org-mode-hook 'org-bullets-mode))

(use-package smartparens
    :ensure t
    :diminish smartparens-mode
    :config
    (add-hook 'prog-mode-hook 'smartparens-mode))

(setq ido-enable-files-mathing nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

(ido-vertical-mode 1)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
("M-x" . smex))




;;; Sanity Changes

(defun lunaryorn-new-buffer-frame ()
  "Create a new frame with a new empty buffer."
  (interactive)
  (let ((buffer (generate-new-buffer "untitled")))
    (set-buffer-major-mode buffer)
    (display-buffer buffer '(display-buffer-pop-up-frame . nil))))

(global-set-key (kbd "C-c n") #'lunaryorn-new-buffer-frame)


(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(linum-mode 1)
(set-window-dedicated-p (selected-window) 1)
(global-set-key (kbd "<escape>")      'keyboard-escape-quit)
(setq inhibit-compacting-font-caches t)
(global-set-key (kbd "C-x b" ) 'ibuffer)
(global-set-key (kbd "C-x C-b" ) 'ido-switch-buffer)
(global-visual-line-mode t)
(add-hook 'org-mode-hook 'org-indent-mode)

(setq make-backup-files nil)(
defalias 'yes-or-no-p 'y-or-n-p)
;;; (when window-system (add-hook 'prog-mode-hook 'hl-line-mode))

(use-package org-journal
  :ensure t
  :defer t
  :custom
  (org-journal-dir "~/Org/Journal/")
  (org-journal-date-format "%A, %d %B %Y"))




;;; Modeline:
(setq-default mode-line-format
      (list
       " " mode-line-modified
       " %[" mode-line-buffer-identification "%] %l %6 "
       mode-line-misc-info
       mode-line-end-spaces))
(setq global-mode-string '((t jabber-activity-mode-string)
			  "" display-time-string appt-mode-string))




;;; Code:
(setq package-enable-at-startup nil)
(set-window-dedicated-p (selected-window) 1)
(add-hook 'window-setup-hook 'delete-other-windows)

(setq-default tab-width 4)

(progn
  (defun turn-on-line-number ()
    "Turn on line number on margin."
    (linum-mode 1))
  (add-hook 'tex-mode-hook 'turn-on-line-number)
  (add-hook 'c-mode-hook 'turn-on-line-number)
  (add-hook 'python-mode-hook 'turn-on-line-number)
    (add-hook 'sh-mode-hook 'turn-on-line-number)
)

(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'shell-mode-hook 'flycheck-mode)

(setq x-use-underline-position-properties nil)
(setq underline-minimum-offset 4)


(advice-add 'org-agenda :after #'delete-other-windows)

(setq inhibit-startup-screen t)




;;; Customi Variables don't bother messing with
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (paper)))
 '(custom-safe-themes
   (quote
	("0ab0fe8a22f701d1a000be6f8a7124273e4a8ed3925d95aed92a98a324d4cfe3" default)))
 '(org-journal-date-format "%A, %d %B %Y")
 '(org-journal-dir "~/Org/Journal/")
 '(package-archives
   (quote
	(("melpa" . "https://stable.melpa.org/packages/")
	 ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
	(babel use-package eyebrowse flycheck ido-vertical-mode org-bullets org-journal smartparens smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#eeeeee" :foreground "#4d4d4c" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(org-document-info ((t (:foreground "#4271ae"))))
 '(org-document-title ((t (:foreground "#4271ae" :weight bold))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "#4271ae" :weight bold :height 1.1))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "#D75F00" :weight bold :height 1.1))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "#8959a8")))))
