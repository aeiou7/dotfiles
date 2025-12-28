;; init.el

;; Add ~/.emacs.d/lisp to load-path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; (Optional) keep Custom settings out of init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(setq initial-buffer-choice #'display-startup-screen)
;;themes
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-emacs-directory))

(load-theme 'fleury t)


;; Load modules
(require 'init-packages)
(require 'init-ui)
(require 'init-evil)
(require 'init-keybinds)
