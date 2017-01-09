;;; init-macos.el --- macos config for emacs.

;;; Commentary:

;;; Code:

;;; use command key install option for M-x
(defun change-option-key-to-command-key-on-mac ()
  (setq-default mac-option-key-is-meta nil)
  (setq-default mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))
(change-option-key-to-command-key-on-mac)

;;; ui
(set-face-attribute 'default nil :font "monaco") ; set font
(set-face-attribute 'default nil :height 160)


(provide 'init-macos)

;;; init-macos.el ends here
