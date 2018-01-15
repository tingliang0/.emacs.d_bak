;; (add-to-list 'auto-mode-alist '("\\.py$" . elpy-mode))
(elpy-enable)
(defun my-lua-mode-hook ()
  (setq-default python-indent-offset 4)
  )

(add-hook 'python-mode 'my-lua-mode-hook)

(provide 'init-python)
