;;; ini-key.el --- Key shortcut for emacs.

;;; Commentary:

;;; Code:

;; (global-set-key (kbd "M-x") 'helm-M-x)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-S-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(global-set-key (kbd "C-9") 'flycheck-previous-error)
(global-set-key (kbd "C-0") 'flycheck-next-error)
(global-set-key (kbd "M-3") 'replace-string)

(provide 'init-key)

;;; init-key.el ends here
