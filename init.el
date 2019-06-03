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
(add-to-list 'load-path "~/.emacs.d/lisp/dev/")
(add-to-list 'load-path "~/.emacs.d/3rd/")

;; use shell PATH instead emacs default PATH
(exec-path-from-shell-initialize)
(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "GOROOT")

;; custom-variables
(setq custom-file "~/.emacs.d/custom-variables.el")
(load custom-file)

(require 'init-packages)
(require 'init-func)
(require 'init-common)
(require 'init-platform)
;; (require 'init-auto-complete)
(require 'init-dev)
(require 'init-key)
(require 'init-ui)

;;; init.el ends here

