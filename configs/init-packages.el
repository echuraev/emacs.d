(require 'use-package)

(use-package tramp
    :config
    (setq tramp-default-method "sshx")
    (setq tramp-syntax 'simplified)
    )

(use-package nlinum-relative
    :config
    (setq nlinum-relative-redisplay-delay 0)
    (nlinum-relative-setup-evil)
    (add-hook 'prog-mode-hook 'nlinum-relative-mode)
    )

(use-package evil
    :init
    (setq evil-want-integration nil)
    (setq evil-want-C-u-scroll t)
    :config
    (evil-mode 1)
    )

(use-package evil-leader
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader ",")
    )

(use-package org
	:ensure t
    :mode ("\\.org\\'" . org-mode)
    )

(use-package magit
    )

(use-package evil-magit
    )

(provide 'init-packages)
