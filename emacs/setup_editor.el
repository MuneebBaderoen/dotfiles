;; Disable that startup screen
(setq inhibit-startup-screen t)

;; Store backups/autosaves in the temporary directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Editor settings
(tool-bar-mode -1) 
(toggle-scroll-bar -1)
(fset 'yes-or-no-p 'y-or-n-p)
