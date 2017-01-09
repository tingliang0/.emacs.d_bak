;;------------------------------------------------------------------------------
;;                                auto complete
;;------------------------------------------------------------------------------
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (ac-config-default)
;; (add-to-list 'ac-modes 'makefile-gmake-mode)
;; (global-auto-complete-mode 1)

;; (setq add-auto-complete-list '(rust-mode lua-mode))
;; (dolist (e add-auto-complete-list)
;;   (add-to-list 'ac-modes e))

;; ------------------------------------------------------------------------------
;;                                company-mode
;; ------------------------------------------------------------------------------
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-dabbrev-downcase nil)	; 
;; set color
;; (require 'color)
;; (let ((bg (face-attribute 'default :background)))
;;   (custom-set-faces
;;    `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 3)))))
;;    `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
;;    `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
;;    `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
;;    `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))


;;------------------------------------------------------------------------------
;;                                yasnippet(模板补全)
;;------------------------------------------------------------------------------
(require 'yasnippet)
(add-hook 'after-init-hook #'yas-global-mode)
;; (yas-global-mode 1)

;; Fix error
;; (delq 'ac-source-yasnippet ac-sources)


;;------------------------------------------------------------------------------
;;                                yasnippet
;;------------------------------------------------------------------------------
  ;; (defun check-expansion ()
  ;;   (save-excursion
  ;;     (if (looking-at "\\_>") t
  ;;       (backward-char 1)
  ;;       (if (looking-at "\\.") t
  ;;         (backward-char 1)
  ;;         (if (looking-at "->") t nil)))))

  ;; (defun do-yas-expand ()
  ;;   (let ((yas/fallback-behavior 'return-nil))
  ;;     (yas/expand)))

  ;; (defun tab-indent-or-complete ()
  ;;   (interactive)
  ;;   (if (minibufferp)
  ;;       (minibuffer-complete)
  ;;     (if (or (not yas/minor-mode)
  ;;             (null (do-yas-expand)))
  ;;         (if (check-expansion)
  ;;             (company-complete-common)
  ;;           (indent-for-tab-command)))))

  ;; (global-set-key [tab] 'tab-indent-or-complete)


;;------------------------------------------------------------------------------
;;                                ycmd
;;------------------------------------------------------------------------------
;; (require 'company)
;; (add-hook 'after-init-hook #'global-company-mode)
;; ;(add-hook 'after-init-hook #'global-flycheck-mode)

;; (require 'ycmd)
;; (add-hook 'after-init-hook #'global-ycmd-mode)
;; (set-variable 'ycmd-server-command '("/usr/bin/python" "/home/tingliang/ycmd/ycmd"))
;; (set-variable 'ycmd-global-config "/home/tingliang/ycmd/examples/.ycm_extra_conf.py")

;; (require 'company-ycmd)
;; (company-ycmd-setup)
;; (setq company-idle-delay 0)
;; ;;(require 'flycheck-ycmd)
;; ;;(flycheck-ycmd-setup)


;;  ;;;;;;;;;;;;;;;;;;;;;;;company;;;;;;;;;;;;;;;;;;  
;; (add-hook 'after-init-hook #'global-company-mode)  
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;flycheck;;;;;;;;;;;;;;;;  
;; (add-hook 'after-init-hook #'global-flycheck-mode)  
;; ;;;;;;;;;;;;;;;;;;;emacs-ycmd;;;;;;;;;;;;;;;;;;;  
;; (require 'ycmd)  
;; (add-hook 'after-init-hook #'global-ycmd-mode)  
;; (ycmd-force-semantic-completion t)  
;;  (ycmd-global-config nil)  
;;  (ycmd-server-command (quote ("python" "/home/chris/Code/ycmd/ycmd")))  
;; (set-variable 'ycmd-global-config "/home/chris/Code/ycmd/cpp/ycm/.ycm_extra_conf.py")  
;; (set-variable 'ycmd-extra-conf-whitelist '("/home/chris/Code/daily_report_system/v1.0/*"))  
;; (require 'company-ycmd)  
;; (company-ycmd-setup)  
;; (require 'flycheck-ycmd)  
;; (flycheck-ycmd-setup)  

(provide 'init-auto-complete)
