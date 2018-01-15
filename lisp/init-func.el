;; lua

;;; Code:
(defun lua-list-global-func ()
  "List lua global function in buffer"
  (interactive)
  (list-matching-lines "^function ")
  )

(defun lua-list-local-func ()
  "List lua local function in buffer"
  (interactive)
  (list-matching-lines "^local function ")
  )

(defun get-file-author()
  "Get current buffer file author"
  (interactive)
  (let cmd (message "git blame --line-porcelain \"%s\" | sed -n 's/^author //p' | sort | uniq -c | sort -rn | awk '{print $2}'
" (buffer-file-name)))
  (async-shell-command cmd)
  )

(provide 'init-func)

;;; init-func.el ends here
