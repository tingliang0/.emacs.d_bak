(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (package-initialize))


;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      ;; --- Auto-completion ---
		      company
		      yasnippet
		      ;; --- Better Editor ---
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      youdao-dictionary
		      nyan-mode
		      ;; --- Major Mode ---
		      fish-mode
		      lua-mode
		      yaml-mode
		      inf-mongo
		      ;; --- Minor Mode ---
		      magit
		      helm
		      helm-git
		      gitignore-mode
		      ;; --- Themes ---
		      monokai-theme
		      molokai-theme
		      ;; js dev
		      js2-mode
		      js-comint
		      flycheck
		      json-mode
		      web-mode
		      exec-path-from-shell
		      nodejs-repl
		      ) "Default packages.")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg))
	do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-packages)

;;; init-packages.el ends here
