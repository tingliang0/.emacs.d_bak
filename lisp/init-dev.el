;;; init-dev.el --- for dev

;;; Commentary:

;;; Code:
(require 'init-go)
(require 'init-js)
(require 'init-lua)
(require 'init-python)
(require 'init-scheme)
(require 'init-c)
(provide 'init-dev)

(add-hook 'before-save-hook (lambda ()
                              ;; (whitespace-cleanup)
                              ))

;(eval-after-load 'flycheck
;  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;;; init-dev.el ends here
