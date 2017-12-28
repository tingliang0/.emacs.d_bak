;;; init-ui.el --- ui config for emacs.

;;; Commentary:

;;; Code:

;; diff-mode
(eval-after-load 'diff-mode
  '(progn
     ;; add
     (set-face-foreground 'diff-added-face "green4")
     (set-face-background 'diff-added-face "black")
     ;; remove
     (set-face-foreground 'diff-removed-face "red3")
     (set-face-background 'diff-removed-face "black")
     ;; context
     (set-face-foreground 'diff-context-face "white")
     ;; (set-face-foreground 'diff-file-header-face "blue1")
     )
  )

(provide 'init-ui)

;;; init-ui.el ends here

