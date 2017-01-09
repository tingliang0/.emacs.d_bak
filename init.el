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

(require 'init-packages)
(require 'init-common)
(require 'init-auto-complete)
(require 'init-dev)
(require 'init-ui)
(require 'init-key)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (gitignore-mode hl-spotlight company-ycmd hl-todo markdown-mode markdown-mode+ markdown-preview-mode w3 inf-mongo js-comint yaml-mode helm-git helm magit fish-mode yasnippet company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell monokai-theme molokai-theme lua-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
