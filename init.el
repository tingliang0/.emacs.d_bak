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
 '(package-selected-packages
   (quote
    (typescript-mode tide mongo go-eldoc go-errcheck go-impl go-mode company-shell company hungry-delete swiper counsel smartparens youdao-dictionary nyan-mode fish-mode lua-mode yaml-mode inf-mongo crontab-mode markdown-mode+ markdown-preview-mode magit helm helm-git gitignore-mode monokai-theme molokai-theme js2-mode js-comint flycheck json-mode web-mode exec-path-from-shell nodejs-repl markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
