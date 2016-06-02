; don't make backup files
(setq make-backup-files nil)
(setq auto-save-default nil)
; line number
(global-linum-mode t)
(global-set-key "\M-g" 'goto-line)
; cask and pallet
(require 'cask "~/.cask/cask.el")
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

;(load-theme 'atom-dark t)
