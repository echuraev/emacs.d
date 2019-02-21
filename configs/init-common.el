;;; you can use 'y'/'n' instead 'yes'/'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; System-type definition
(defun system-is-linux()
    (string-equal system-type "gnu/linux"))
(defun system-is-windows()
    (string-equal system-type "windows-nt"))

;; Start Emacs as a server
(when (system-is-linux)
    (require 'server)
    (unless (server-running-p)
	(server-start)))

(tool-bar-mode -1) ;; disable tool-bar

;; Show-paren-mode settings
(show-paren-mode t)
(setq show-paren-style 'expression)

;; Indent settings
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default standart-indent 4)

(savehist-mode 1)

(setq display-time-24hr-format t)
(display-time-mode t)

(size-indication-mode t)

;; Scrolling settings
(setq scroll-step 1)
(setq scroll-margin 5)
(setq scroll-conservatively 10000)
(setq compilation-scroll-output t)

;; remember cursor position
(if (version< emacs-version "25.0")
    (progn
        (require 'saveplace)
        (setq-default save-place t))
    (save-place-mode 1))

(provide 'init-common)
