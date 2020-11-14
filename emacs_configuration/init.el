;; -================================-
;; -= Andrius' emacs customization =-
;;   -= Originally created: 2020 =-
;; -================================-


;;    Add this file to ~/.emacs.d/
;;    To enable/disable mode: M + x mode-name

;;    User-Defined init.el starts here


;; Write backups to ~/.emacs.d/backup/
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t        ;; Don't de-link hard links
      version-control        t        ;; Use version numbers on backups
      delete-old-versions    t        ;; Automatically delete excess backups:
      kept-new-versions      20       ;; how many of the newest versions to keep
      kept-old-versions      5)       ;; and how many of the old


;;   Other modes/initializations
(setq inhibit-startup-message t)      ;; Disable startup message
(setq auto-save-list-file-prefix nil) ;; Disable creation of autosave folder
(tool-bar-mode -1)                    ;; Disable the toolbar menu
(column-number-mode)                  ;; Show line and column no at the bottom
(show-paren-mode)                     ;; Highights the matching brace
(electric-pair-mode)                  ;; Close a brace as you open it
;;(global-hl-line-mode t)               ;; highlight the current line
(load-theme 'wombat)                  ;; Dark theme
(winner-mode t)                       ;; Undo and redo when dividing emacs
				       ;;    into windows C+c+(left or right)


;;    Key Bindings
(global-set-key '[f1] 'goto-line)
(global-set-key '[f2] 'start-kbd-macro)
(global-set-key '[f3] 'end-kbd-macro)
(global-set-key '[f4] 'call-last-kbd-macro)
(global-set-key '[f5] 'replace-string)
(global-set-key '[f6] 'indent-region)
(global-set-key '[f7] 'compile)
(global-set-key '[f8] 'revert-buffer)
(global-set-key '[f9] 'help)


;;   User-Defined init.el ends here
