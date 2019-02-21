;;; start package.el with emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)

(setq package-archives nil)

(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("elpy" . "https://jorgenschaefer.github.io/packages/") t)

(setq package-enable-at-startup nil)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(use-package use-package-ensure-system-package
	     :ensure t)

(require 'init-evil)
(require 'init-common)
(require 'init-common-packages)
(require 'init-org)
(require 'init-view)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
