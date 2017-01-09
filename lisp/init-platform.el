;; check OS type
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Microsoft Windows")
    ))
 ((string-equal system-type "darwin")   ; Mac OS X
  (progn
    (message "macOS")
    (require 'init-macos)
    ))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux")
    (require 'init-linux)
    )))


(provide 'init-platform)
;;; init-platform ends here
