; don't make backup files
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

