;;------------------------------------------------------------------------------
;;               load path
;;------------------------------------------------------------------------------

;; search path
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; theme path
(setq custom-theme-directory "~/.emacs.d/themes/")

;; package
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/3rd/")

(require 'init-packages)
(require 'init-common)
(require 'init-platform)
(require 'init-auto-complete)
(require 'init-dev)
(require 'init-key)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9bd5ee2b24759fbc97f86c2783d1bf8f883eb1c0dd2cf7bda2b539cd28abf6a9" "a513bb141af8ece2400daf32251d7afa7813b3a463072020bb14c82fd3a5fe30" default)))
 '(package-selected-packages
   (quote
    (color-theme-modern diff-hl rjsx-mode youdao-dictionary nyan-mode gitignore-mode hl-spotlight company-ycmd hl-todo markdown-mode markdown-mode+ markdown-preview-mode w3 inf-mongo js-comint yaml-mode helm-git helm magit fish-mode yasnippet company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell monokai-theme molokai-theme lua-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
