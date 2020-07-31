(require 'evil)
(evil-mode 1)

(use-package
  evil
  :ensure t
  :config
	(define-key evil-normal-state-map (kbd "H") (kbd "^"))
	(define-key evil-normal-state-map (kbd "L") (kbd "$"))
	(define-key evil-normal-state-map (kbd "K") (kbd "5k"))
	(define-key evil-normal-state-map (kbd "J") (kbd "5j"))
	(define-key evil-visual-state-map (kbd "H") (kbd "^"))
	(define-key evil-visual-state-map (kbd "L") (kbd "$"))
	(evil-set-leader 'normal (kbd "<SPC>"))
	(evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)
	(evil-define-key 'normal 'global (kbd "<leader>ff") 'counsel-find-file)
	(evil-define-key 'normal 'global (kbd "<leader>fr") 'counsel-recentf)
	(evil-define-key 'normal 'global (kbd "<leader>ra") 'ranger)
	(evil-define-key 'normal 'global (kbd "<leader><SPC>") 'counsel-M-x)
	(evil-define-key 'normal 'global (kbd "<escape>") 'keyboard-quit)
	(evil-define-key 'normal 'global (kbd "<leader>wd") 'delete-window)
	(evil-define-key 'normal 'global (kbd "<leader>sj") 'split-window-below)
	(evil-define-key 'normal 'global (kbd "<leader>sl") 'split-window-right)
	(evil-define-key 'normal 'global (kbd "<leader>wv") 'split-window-horizontally)
	(evil-define-key 'normal 'global (kbd "<leader>ws") 'split-window-vertically)
	(evil-define-key 'normal 'global (kbd "<leader>bd") 'kill-buffer)
	(evil-define-key 'normal 'global (kbd "<leader>ww") 'ace-window)
	(evil-define-key 'normal 'global (kbd "<leader>wj") 'windmove-down)
	(evil-define-key 'normal 'global (kbd "<leader>wk") 'windmove-up)
	(evil-define-key 'normal 'global (kbd "<leader>wh") 'windmove-left)
	(evil-define-key 'normal 'global (kbd "<leader>wl") 'windmove-right)
	(evil-define-key 'normal 'global (kbd "<leader>wH") 'window-move-left)
	(evil-define-key 'normal 'global (kbd "<leader>wL") 'window-move-right)
	(evil-define-key 'normal 'global (kbd "<leader>wJ") 'window-move-down)
	(evil-define-key 'normal 'global (kbd "<leader>wK") 'window-move-up)

	(evil-define-key 'normal 'global (kbd "<leader>qq") 'save-buffers-kill-terminal)
	(evil-define-key 'normal 'global (kbd "<leader>bb") 'ivy-switch-buffer)
	(evil-define-key 'normal 'global (kbd ";") 'evil-ex)

	(evil-define-key 'normal 'global (kbd "<leader>cl") 'evilnc-comment-or-uncomment-lines)
	(evil-define-key 'normal 'global (kbd "<leader>ci") 'evilnc-quick-comment-or-uncomment-to-the-line)
	(evil-define-key 'normal 'global (kbd "<leader>ll") 'evilnc-quick-comment-or-uncomment-to-the-line)
	(evil-define-key 'normal 'global (kbd "<leader>cc") 'evilnc-copy-and-comment-lines)
	(evil-define-key 'visual 'global (kbd "<leader>cl") 'evilnc-comment-or-uncomment-lines)
	(evil-define-key 'visual 'global (kbd "<leader>ci") 'evilnc-quick-comment-or-uncomment-to-the-line)
	(evil-define-key 'visual 'global (kbd "<leader>ll") 'evilnc-quick-comment-or-uncomment-to-the-line)
	(evil-define-key 'visual 'global (kbd "<leader>cc") 'evilnc-copy-and-comment-lines)

	(evil-define-key 'normal 'global (kbd "<leader>lr") 'quickrun)
  )


(provide 'init-evil)
