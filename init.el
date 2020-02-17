(setq emacs-load-start-time (current-time))

;; require package
(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("elpy" . "https://jorgenschaefer.github.io/packages/") t)
;; Initialise packages
(package-initialize)

;; get latest package information
;(package-refresh-contents)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))
(require 'use-package)
;; Automatic install packages. Doesn't necessary to specify ':ensure t' in package configuration
(setq use-package-always-ensure t)
;; Ensure system binaries exist alongside your package declarations.
(use-package use-package-ensure-system-package
    :ensure t)

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(require 'init-packages)
(require 'init-common)
(require 'init-view)
(require 'init-key-bindings)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(when (require 'time-date nil t)
    (message "Emacs startup time: %d seconds."
        (time-to-seconds (time-since emacs-load-start-time))))
