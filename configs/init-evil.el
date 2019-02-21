(require 'use-package)

(use-package evil
    :ensure t
    :init
    (setq evil-want-integration nil)
    (setq evil-want-C-u-scroll t)
    :config
    (evil-mode 1)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-decrease-height)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-increase-height)
    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-decrease-width)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-increase-width))

(provide 'init-evil)
