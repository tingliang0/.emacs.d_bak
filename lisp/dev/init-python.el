(elpy-enable)
(defun my-lua-mode-hook ()
  (setq-default python-indent-offset 4)
  )

(add-hook 'python-mode 'my-lua-mode-hook)
(add-hook 'before-save-hook 'elpy-format-code)
(provide 'init-python)
