;;; ini-go.el --- for python dev

;;; Commentary:

;;; Code:
(elpy-enable)
(defun my-python-mode-hook ()
  (setq python-indent-offset 4)
  ;; (add-hook 'write-contents-functions
  ;;           (lambda()
  ;;             (save-excursion (elpy-format-code)))
  ;;           nil t))
)
(add-hook 'before-save-hook (lambda()
                              (when (eq major-mode 'python-mode)
                                (elpy-format-code))))

(add-hook 'python-mode 'my-python-mode-hook)
(provide 'init-python)
;;; init-python.el ends here
