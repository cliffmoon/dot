;; -*-emacs-lisp-*-

(add-to-list 'load-path "~/projects/dot/elisp")
(normal-top-level-add-subdirs-to-load-path)


(require 'color-theme)
(color-theme-initialize)
(color-theme-jedit-grey)
(require 'tabbar)
(tabbar-mode 1)
(global-set-key (kbd "M-s-<right>") 'tabbar-forward-tab)
(global-set-key (kbd "M-s-<left>") 'tabbar-backward-tab)
(global-set-key (kbd "C-s-<right>") 'windmove-right)
(global-set-key (kbd "C-s-<left>") 'windmove-left)
(global-set-key (kbd "C-s-<up>") 'windmove-up)
(global-set-key (kbd "C-s-<down>") 'windmove-down)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
