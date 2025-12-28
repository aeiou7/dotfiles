;;; init-keybinds.el --- keybindings -*- lexical-binding: t; -*-

(use-package which-key
  :config
  (which-key-mode 1)
  (setq which-key-idle-delay 0.4))

(use-package general
  :after evil
  :config
  ;; Leader key definition
  (general-create-definer my/leader
    :states '(normal visual motion)
    :keymaps 'override
    :prefix "SPC"
    :global-prefix "C-SPC")

  ;; Leader bindings (expand over time)
  (my/leader
    "f"  '(:ignore t :which-key "files")
    "ff" '(find-file :which-key "find file")
    "fs" '(save-buffer :which-key "save file")
    "fr" '(recentf-open-files :which-key "recent files")

    "b"  '(:ignore t :which-key "buffers")
    "bb" '(switch-to-buffer :which-key "switch buffer")
    "bk" '(kill-current-buffer :which-key "kill buffer")

    "w"  '(:ignore t :which-key "windows")
    "ws" '(split-window-below :which-key "split below")
    "wv" '(split-window-right :which-key "split right")
    "wd" '(delete-window :which-key "delete window")
    "wo" '(delete-other-windows :which-key "only window"))

  ;; Example: put non-leader bindings here too (Evil normal state, etc.)
  (general-define-key
   :states '(normal visual)
   "Y" #'yank-to-end-of-line))

(provide 'init-keybinds)
;;; init-keybinds.el ends here
