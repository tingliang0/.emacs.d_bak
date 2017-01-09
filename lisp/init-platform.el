;; check OS type
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Microsoft Windows")
    ))
 ((string-equal system-type "darwin")   ; Mac OS X
  (progn
    (message "macOS")
    (load "init-macos")
    ))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux")
    (load "init-linux")
    )))


(provide 'init-platform)
;;; init-platform ends here
