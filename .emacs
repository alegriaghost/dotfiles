(setq load-path (cons "~/.emacs.d/elisp" load-path))
(global-linum-mode t)
(set-face-attribute 'default nil
        :family "MIGU 1M"
        :height 90)
(set-fontset-font "fontset-default"
        'japanese-jisx0208
        '("MIGU 1M" . "jisx0208-sjis"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auto-save-default nil)
 '(custom-enabled-themes (quote (misterioso)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Show tab, zenkaku-space, white spaces at end of line
;; http://www.bookshelf.jp/soft/meadow_26.html#SEC317
(defface my-face-tab         '((t (:background "LightYellow" :foreground "Red" :underline t))) nil :group 'my-faces)
(defface my-face-zenkaku-spc '((t (:background "LightBlue"))) nil :group 'my-faces)
(defface my-face-spc-at-eol  '((t (:foreground "Red" :underline t))) nil :group 'my-faces)
(defvar my-face-tab         'my-face-tab)
(defvar my-face-zenkaku-spc 'my-face-zenkaku-spc)
(defvar my-face-spc-at-eol  'my-face-spc-at-eol)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-tab append)
     ("　" 0 my-face-zenkaku-spc append)
     ("[ \t]+$" 0 my-face-spc-at-eol append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
;; settings for text file
(prefer-coding-system 'utf-8)
; package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;Emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; マークアップ言語全部で使う
(add-hook 'css-mode-hook  'emmet-mode) ;; CSSにも使う
;(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent はスペース2個
(eval-after-load "emmet-mode"
  '(define-key emmet-mode-keymap (kbd "C-j") nil)) ;; C-j は newline のままにしておく
(keyboard-translate ?\C-i ?\H-i) ;;C-i と Tabの被りを回避
(define-key emmet-mode-keymap (kbd "H-i") 'emmet-expand-line) ;; C-i で展開
