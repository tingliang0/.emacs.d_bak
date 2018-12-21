;;; init-c.el --- for c dev

;;; Commentary:

;;; Code:
(require 'company)
(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/")

(add-hook 'c-mode-hook (lambda ()
                        (setq-local c-default-style "cc-mode" c-basic-offset 4)
                        ))

(provide 'init-c)
;;; init-go.el ends here
