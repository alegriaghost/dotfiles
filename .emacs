; don't make backup files

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq make-backup-files nil)
(setq auto-save-default nil)
; line number
(global-linum-mode t)
(global-set-key "\M-g" 'goto-line)
; cask and pallet
(require 'cask)
(cask-initialize)
(require 'pallet)

; custom
(setq php-mode-force-pear t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)
; neotree
(global-set-key [f8] 'neotree-toggle)
; emmet-mode setting
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)
; brackets setting
(electric-pair-mode 1)
; language setting
(set-language-environment 'Japanese)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
; coding system setting
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
; ctags
;(require 'ctags nil t)
;(setq tags-revert-without-query t)
;(setq ctags-command "ctags -R --fields=\"+afikklmnsSzt\" ")
;(global-set-key [f5] 'ctags-create-or-update-tags-table)
;(global-set-key "\M-." 'ctags-search)
; color-theme
(load-theme 'atom-dark t)
