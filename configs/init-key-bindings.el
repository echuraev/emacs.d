;; init-key-bindings.el

;; ----------------------
;; Evil
;; ----------------------

(define-key evil-normal-state-map (kbd "C-k") 'evil-window-decrease-height)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-increase-height)
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-decrease-width)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-increase-width)

(provide 'init-key-bindings)
