;;which key
(use-package which-key
	     :config
	     (which-key-mode 1)
	     (setq which-key-idle-delay 0.1))
;;example leader bindings
(my/leader
  "f" '(:ignore t :which-key "files")
  "ff"'(find-file :which-key "find file")
  "fs"'(save-buffer :which-key "save")
  "b" '(:ignore t :which-key "buffers")
  "bb"'(switch-to-buffer :which-key "switch buffer")
  "bk"'(kill-current-buffer :which-key "kill buffer")))


(provide 'init-which-key)
