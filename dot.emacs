;; -*-emacs-lisp-*-

(let ((default-directory "~/projects/dot/elisp"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path (car (file-expand-wildcards "/usr/local/lib/erlang/lib/tools-*/emacs")))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)
(require 'distel)
(distel-setup)
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)
(require 'tabbar)
(tabbar-mode 1)
(require 'scala-mode)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(setq not-to-kill-buffer-list '("*scratch*" "#emacs" "*Messages*"))
(defun kill-current-buffer ()
  "Kill the current buffer without confirmation."
  (interactive)
  (if (member (buffer-name (current-buffer)) not-to-kill-buffer-list)
      (bury-buffer)
    (kill-buffer (current-buffer))))
(global-set-key (kbd "s-W") 'delete-window)
(global-set-key (kbd "s-w") 'kill-current-buffer)
(global-set-key (kbd "M-s-<right>") 'tabbar-forward-tab)
(global-set-key (kbd "M-s-<left>") 'tabbar-backward-tab)
(global-set-key (kbd "C-s-<right>") 'windmove-right)
(global-set-key (kbd "C-s-<left>") 'windmove-left)
(global-set-key (kbd "C-s-<up>") 'windmove-up)
(global-set-key (kbd "C-s-<down>") 'windmove-down)
(global-set-key (kbd "s-/") 'comment-region)
(require 'magit)
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red1")
     (set-face-background 'magit-item-highlight "grey20")
     (set-face-foreground 'magit-diff-file-header "white")
     
     (set-face-background 'magit-diff-file-header "DodgerBlue4")
     (set-face-foreground 'magit-diff-hunk-header "white")
     (set-face-background 'magit-diff-hunk-header "DodgerBlue1")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

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
