;;; init-c.el --- for c dev

;;; Commentary:

;;; Code:
(add-hook 'c-mode-hook (lambda ()
                        (setq c-default-style "cc-mode" c-basic-offset 4)
                        ))

(provide 'init-c)
;;; init-go.el ends here
