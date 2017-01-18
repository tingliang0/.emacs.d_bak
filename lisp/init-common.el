(require 'smartparens-config)


((lambda ()
   (global-linum-mode t)
   (global-hl-line-mode t)              ; highlight current mode
   (setq nyan-mode t)
   (column-number-mode t)
   (setq select-enable-clipboard t)
   (show-paren-mode t)
   (set-face-background 'show-paren-match "yellow")
   ;; (auto-image-file-mode t)
   ;; (setq-default display-time-format "%Y-%m-%d %H:%M %A") ; year-month-day hh:mm week
   ;; (display-time)
   (electric-pair-mode t)
   ;; (setq molokai-theme-kit t)
   ;; (load-theme 'molokai t)	 ; theme
   (load-theme 'monokai t)
   ;; (load-theme 'bharadwaj t)
   ;;(setq show-paren-style 'expression)
   (setq-default show-paren-style 'parenthesis)
   (setq-default make-backup-files nil)
   ;; (iswitchb-mode 1)
   (ido-mode 1)
   (scroll-bar-mode 0)
   (tool-bar-mode 0)
   (electric-pair-mode 1)
   (put 'erase-buffer 'disabled nil)
   (recentf-mode 1)
   (setq-default recentf-max-menu-items 50)
   ;; encode
   (prefer-coding-system 'utf-8)
   (set-default-coding-systems 'utf-8)
   ;; max window
   (toggle-frame-maximized)
   ;; (helm-mode t)
   (smartparens-global-mode t)
   (set-face-attribute 'region nil :background "chocolate2" :foreground "#ffffff")
   (set-default 'yaml-indent-offset 4)
   ))

(provide 'init-common)
;;; init-common.el ends here
