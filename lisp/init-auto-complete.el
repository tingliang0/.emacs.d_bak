;; ------------------------------------------------------------------------------
;;                                company-mode
;; ------------------------------------------------------------------------------
(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-dabbrev-downcase nil)	; 大小写敏感
(setq company-minimum-prefix-length 3)  ; 输入两个字符开始保存
(with-eval-after-load 'company
  ;; key
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))
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
