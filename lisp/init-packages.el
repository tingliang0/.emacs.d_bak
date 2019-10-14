;;; package --- Summary
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;;
;; use-package
;;
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package diminish :ensure t)
(use-package bind-key :ensure t)

;; auto update package when startup
;;(use-package auto-package-update
;;  :config
;;  (setq auto-package-update-delete-old-versions t)
;;  (setq auto-package-update-hide-results t)
;;  (auto-package-update-maybe))


;;
;; multiple cursors
;;
(use-package multiple-cursors
  :ensure t
  :bind (
         ("M-3" . mc/mark-next-like-this)
         ("M-4" . mc/mark-previouse-like-this)
         :map ctl-x-map
         ("\C-m" . mc/mark-all-dwin)
         ("<return>" . mule-keymap)))


;;
;; ivy-mode
;;
(use-package ivy
  :ensure t
  :diminish (ivy-mode . "")
  :bind (("C-c C-r" . ivy-resume))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height 10)
  (setq ivy-initial-inputs-alist nil)
  (setq ivy-count-format "%d/%d ")
  (setq ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package counsel
  :ensure t
  :bind(
        ("M-x" . counsel-M-x)))
        ;;("C-x C-f" . counsel-find-file)))

(use-package swiper
  :ensure t
  :bind(("C-s" . swiper)))


;;
;; yasnippet
;;
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode))
  ;; (use-package yasnippet-snippets :ensure t))


;;
;; company
;;
(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0)
  (setq company-dabbrev-downcase nil)	; 大小写敏感
  (setq company-minimum-prefix-length 3)  ; 输入两个字符开始保存
  (setq company-backends
        '((company-files
           company-yasnippet
           company-keywords
           company-capf)))
  )

(with-eval-after-load 'company
  ;; key
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;;company integrate with yasnippet
(advice-add 'company-complete-common :before
            (lambda ()
              (setq my-company-point (point))))
(advice-add 'company-complete-common :after
            (lambda ()
              (when (equal my-company-point (point))
                (yas-expand))))


;;
;; magit
;;
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))


;;
;; flycheck
;;
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))


;;
;; projectile
;;
(use-package projectile
  :ensure t
  :config
  (projectile-mode t)
  (setq projectile-completion-system 'ivy)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (use-package counsel-projectile
    :ensure t))


;; rust-mode
;;
;;
(use-package rust-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.rs\\" . rust-mode)))

;; cl - Common Lisp Extension
;; (require 'cl)

;; ;; Add Packages
;; (defvar my-packages '(
;;                       ;; Search
;;                       ag
;;                       ;; --- Auto-completion ---
;;                       company
;;                       company-shell
;;                       company-go
;;                       company-lua
;;                       company-c-headers
;;                       yasnippet
;;                       ;; --- Better Editor ---
;;                       hungry-delete
;;                       swiper
;;                       counsel
;;                       smartparens
;;                       youdao-dictionary
;;                       nyan-mode
;;                       ;; --- Major Mode ---
;;                       fish-mode
;;                       lua-mode
;;                       yaml-mode
;;                       inf-mongo
;;                       ;; crontab-mode
;;                       markdown-mode+
;;                       markdown-preview-mode
;;                       typescript-mode
;;                       ;; --- Minor Mode ---
;;                       magit
;;                       helm
;;                       helm-git
;;                       gitignore-mode
;;                       tide
;;                       ;; --- Themes ---
;;                       monokai-theme
;;                       molokai-theme
;; 		      tango-2-theme
;;                       ;; js dev
;;                       js2-mode
;;                       js-comint
;;                       flycheck
;;                       json-mode
;;                       web-mode
;;                       exec-path-from-shell
;;                       nodejs-repl
;;                       ;; python dev
;;                       ;; eply
;;                       ;; --- Write ---
;;                       markdown-mode
;;                       ;; go
;;                       go-eldoc
;;                       ;; c
;;                       xcscope
;;                       ) "Default packages.")

;; (setq package-selected-packages my-packages)

;; (defun my-packages-installed-p ()
;;   (loop for pkg in my-packages
;;         when (not (package-installed-p pkg))
;;         do (return nil)
;;         finally (return t)))

;; (unless (my-packages-installed-p)
;;     (message "%s" "Refreshing package database...")
;;     (package-refresh-contents)
;;     (dolist (pkg my-packages)
;;       (when (not (package-installed-p pkg))
;;         (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-packages)

;;; init-packages.el ends here
