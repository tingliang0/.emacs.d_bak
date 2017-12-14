

;;; Code:
;;; ------------------------------------------------------------------------------
;;;                                javascript IDE
;;; ------------------------------------------------------------------------------
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'nodejs-repl)
(require 'comint)
(require 'ansi-color)
(require 'js-comint)
(setq inferior-js-program-command "node")
(setq inferior-js-program-arguments '("--interactive"))
(defun inferior-js-mode-hook-setup ()
  (add-hook 'comint-output-filter-functions 'js-comint-process-output))
(add-hook 'inferior-js-mode-hook 'inferior-js-mode-hook-setup t)
(add-hook 'js2-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
	    ;; (local-set-key (kbd "C-M-x") 'js-send-last-sexp-and-go)
	    ;; (local-set-key (kbd "C-c b") 'js-send-buffer)
	    ;; (local-set-key (kbd "C-c C-b") 'js-send-buffer-and-go)
	    (local-set-key (kbd "C-c b") 'js-send-region)
	    (local-set-key (kbd "C-c C-z") 'run-js)
	    (local-set-key (kbd "C-9") 'flycheck-previous-error)
	    (local-set-key (kbd "C-0") 'flycheck-next-error)
	    (local-set-key (kbd "C-c l") 'js-load-file-and-go)))

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; http://www.flycheck.org/manual/latest/index.html
(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))

;;------------------------------------------------------------------------------
;;                                sproto-mode
;;------------------------------------------------------------------------------
(require 'sproto-mode)
(defun my-sproto-mode-hook ()
  (setq-local tab-width 4)
  )
(add-hook 'sproto-mode-hook 'my-sproto-mode-hook)

(require 'td-mode)
(defun my-td-mode-hook ()
  (setq-local tab-width 4)
  )
(add-hook 'td-mode-hook 'my-td-mode-hook)
(add-to-list 'auto-mode-alist '("typedef$" . td-mode))
;;------------------------------------------------------------------------------
;;                                lua IDE
;;------------------------------------------------------------------------------
(defun find-in-workspace(term)
  (interactive "sSearch: \n")
  (grep (concat "grep --color -nH -e '" term "' *.lua")))

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(defun my-lua-mode-hook ()
  (setq-local tab-width 4)
  (setq-local indent-tabs-mode nil)
  (setq-local lua-indent-level 4)
  ;; key
  (define-key lua-mode-map (kbd "C-c C-f") 'lua-list-global-func)
  (define-key lua-mode-map (kbd "C-c C-l") 'lua-list-local-func)
  )
(add-hook 'lua-mode-hook 'my-lua-mode-hook)


;;------------------------------------------------------------------------------
;;                                typescript IDE
;;------------------------------------------------------------------------------
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; TSX
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

;; Javascript
(add-hook 'js2-mode-hook #'setup-tide-mode)

;; JSX
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "jsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

;; Debug
(setq tide-tsserver-process-environment '("TSS_LOG=-level verbose -file /tmp/tss.log"))


;; go
(require 'company)
(require 'company-go)
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (setq tab-width 4)
                          (setq gofmt-command "goimports")
                          ;; (setq gofmt-args (cons "gofmt" "-s"))
                          (go-eldoc-setup)
                          (company-mode)))
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-dev)

;;; init-dev.el ends here
