; 行番号表示
(global-linum-mode t)
; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)
; package-install
(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
; 括弧の自動補完
(electric-pair-mode 1)
; メタキーの設定
(when (eq system-type 'darwin)
    (setq ns-command-modifier (quote meta)))
; Language.
(set-language-environment 'Japanese)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
; Emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; マークアップ言語全部で使う
(add-hook 'css-mode-hook  'emmet-mode) ;; CSSにも使う
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent はスペース2個
(eval-after-load "emmet-mode"
  '(define-key emmet-mode-keymap (kbd "C-j") nil)) ;; C-j は newline のままにしておく
;(keyboard-translate ?\C-i ?\H-i) ;;C-i と Tabの被りを回避
;(define-key emmet-mode-keymap (kbd "H-i") 'emmet-expand-line) ;; C-i で展開
