;;; ini-key.el --- Key shortcut for emacs.

;;; Commentary:

;;; Code:
;;; C-key
(cond ((string-equal system-type "darwin") ; macos
     (progn
       (global-unset-key (kbd "C-z"))
       (global-set-key (kbd "C-z") 'undo)
       )))
(global-set-key (kbd "C-9") 'flycheck-previous-error)
(global-set-key (kbd "C-0") 'flycheck-next-error)

;;; M-key
(global-set-key (kbd "M-1") 'hs-hide-all)
(global-set-key (kbd "M-2") 'hs-show-all)
(global-set-key (kbd "M-3") 'replace-string)
(global-set-key (kbd "M-4") 'list-matching-lines)
(global-set-key (kbd "M-5") 'find-in-workspace)
;; (global-set-key (kbd "M-6") 'load-current-file)
;; (global-set-key (kbd "M-7") 'yas/reload-all)
;; (global-set-key (kbd "M-8") 'byte-compile-current-file)
(global-set-key (kbd "M-9") 'previous-error)
(global-set-key (kbd "M-0") 'next-error)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "M-x") 'helm-M-x)

;;; C-c key
(global-set-key (kbd "C-c t") 'youdao-dictionary-search-at-point)

;;; C-x key
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; (global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)


;;; C-S key
(global-set-key (kbd "C-S-s") 'swiper)
(global-set-key (kbd "C-S-k") 'kill-whole-line)

;; F1-F12
(global-set-key (kbd "<f8>") 'whitespace-mode)
(global-set-key (kbd "<f5>") 'delete-trailing-whitespace)

(provide 'init-key)

;;; init-key.el ends here
