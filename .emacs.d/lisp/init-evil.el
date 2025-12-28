;;; init-evil.el --- evil setup -*- lexical-binding: t; -*-

;; Must be set before evil loads
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(setq evil-want-C-u-scroll t)
(setq evil-want-C-i-jump t)

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(provide 'init-evil)
;;; init-evil.el ends here
