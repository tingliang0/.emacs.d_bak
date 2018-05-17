;;; init-dev.el --- for dev

;;; Commentary:

;;; Code:
(require 'init-go)
(require 'init-js)
(require 'init-lua)
(require 'init-python)
(require 'init-scheme)
(provide 'init-dev)

(add-hook 'before-save-hook (lambda ()
                              (whitespace-cleanup)
                              ))

;;; init-dev.el ends here
