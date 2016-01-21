; don't make backup files
(setq make-backup-files nil)
(setq auto-save-default nil)
; line number
(global-linum-mode t)
(global-set-key "\M-g" 'goto-line)