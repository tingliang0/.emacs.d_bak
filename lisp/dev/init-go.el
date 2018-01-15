;;; ini-go.el --- for go dev

;;; Commentary:

;;; Code:
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

(provide 'init-go)
;;; init-go.el ends here
