;;; init-ui.el --- ui config -*- lexical-binding: t; -*-

;; Transparency
;;(let ((alpha 80))
;;  (cond
;;   ((boundp 'alpha-background)
;;    (set-frame-parameter nil 'alpha-background alpha)
;;    (add-to-list 'default-frame-alist `(alpha-background . ,alpha)))
;;   (t
;;    (set-frame-parameter nil 'alpha `(,alpha . ,alpha))
;;    (add-to-list 'default-frame-alist `(alpha . (,alpha . ,alpha))))))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(provide 'init-ui)
;;; init-ui.el ends here

