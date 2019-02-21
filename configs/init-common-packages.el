(require 'use-package)

(require 'tramp)
(setq tramp-default-method "sshx")
(setq tramp-syntax 'simplified)

(use-package nlinum-relative
    :config
    (setq nlinum-relative-redisplay-delay 0)
    (nlinum-relative-setup-evil)
    (add-hook 'prog-mode-hook 'nlinum-relative-mode))

(provide 'init-common-packages)
