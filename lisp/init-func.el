;; lua
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

(provide 'init-func)

