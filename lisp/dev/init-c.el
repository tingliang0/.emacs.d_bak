;;; init-c.el --- for c dev

;;; Commentary:

;;; Code:
(add-hook 'c-mode-hook(lambda ()
                        (c-set-style "cc-mode")
                        ))
