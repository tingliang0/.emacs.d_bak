;; package
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)


;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my-packages '(
                      ;; Search
                      ag
                      ;; --- Auto-completion ---
                      company
                      company-shell
                      company-go
                      company-lua
                      company-c-headers
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
                      ;; crontab-mode
                      markdown-mode+
                      markdown-preview-mode
                      typescript-mode
                      ;; --- Minor Mode ---
                      magit
                      helm
                      helm-git
                      gitignore-mode
                      tide
                      ;; --- Themes ---
                      monokai-theme
                      molokai-theme
		      tango-2-theme
                      ;; js dev
                      js2-mode
                      js-comint
                      flycheck
                      json-mode
                      web-mode
                      exec-path-from-shell
                      nodejs-repl
                      ;; python dev
                      ;; eply
                      ;; --- Write ---
                      markdown-mode
                      ;; go
                      go-eldoc
                      ;; c
                      xcscope
                      ) "Default packages.")

(setq package-selected-packages my-packages)

(defun my-packages-installed-p ()
  (loop for pkg in my-packages
        when (not (package-installed-p pkg))
        do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my-packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-packages)

;;; init-packages.el ends here
