;;; ini-lua.el --- for lua dev

;;; Commentary:

;;; Code:
;;; C-key
;;------------------------------------------------------------------------------
;;                                sproto-mode
;;------------------------------------------------------------------------------
(require 'sproto-mode)
(defun my-sproto-mode-hook ()
  (setq-local tab-width 4)
  )
(add-hook 'sproto-mode-hook 'my-sproto-mode-hook)

(require 'td-mode)
(defun my-td-mode-hook ()
  (setq-local tab-width 4)
  )
(add-hook 'td-mode-hook 'my-td-mode-hook)
(add-to-list 'auto-mode-alist '("typedef$" . td-mode))
;;------------------------------------------------------------------------------
;;                                lua IDE
;;------------------------------------------------------------------------------
(defun find-in-workspace(term)
  (interactive "sSearch: \n")
  (grep (concat "grep --color -nH -e '" term "' *.lua")))

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(defun my-lua-mode-hook ()
  (setq-local tab-width 4)
  (setq-local indent-tabs-mode nil)
  (setq-local lua-indent-level 4)
  ;; key
  (define-key lua-mode-map (kbd "C-c C-f") 'lua-list-global-func)
  (define-key lua-mode-map (kbd "C-c C-l") 'lua-list-local-func)
  )
(add-hook 'lua-mode-hook 'my-lua-mode-hook)


(provide 'init-lua)
;;; init-lua.el ends here
