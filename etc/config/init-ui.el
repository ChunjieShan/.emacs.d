;;;===========================================
;;;					模块介绍
;;; 用户交互界面模块
;;;===========================================

;; MODULE: USER INTERFACE 

;; AUTHOR: EvanMeek the_lty_mail@foxmail.com

;; CODE:

;; 加载主题
(load-file "~/.emacs.d/site-lisp/emacs-doom-themes/themes/doom-gruvbox-theme.el")
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)
  
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(setq evan/font-name "Iosevka"
	  evan/font-style "Regular"
	  evan/font-size 15)
;; 设置透明
;; (set-frame-parameter nil 'alpha '(85 .100))
;; 设置光标颜色
;; (set-cursor-color "green2")
;; 设置光标样式
(setq-default cursor-type 'box)
;; 去除默认启动界面
(setq inhibit-startup-message nil)
;; 设置英文字体
(push '(if (fontp (font-spec
				   ;; :name "Fira Code Nerd Font"
				   ;; :style "Retina"
				   :name evan/font-name
				   :style evan/font-style
				   ;; :name "Sarasa Mono SC"
				   ;; :style "Regular"
				   :size evan/font-size)) 
		   (set-face-attribute 'default nil 
							   :font (font-spec 
									  ;; :name "Fira Code Nerd Font"
									  ;; :style "Retina"
									  :name evan/font-name
									  :style evan/font-style
									  ;; :name "Sarasa Mono SC"
									  ;; :style "Regular"
									  :size evan/font-size)) 
		 (message "无法找到%s字体，你可以更换其他字体或安装它让这条消息消失." evan/font-name)) graphic-only-plugins-setting)

;; 高亮当前行
(global-hl-line-mode 1)

;; 切换buffer焦点时高亮动画
(use-package
  beacon
  :ensure t
  :hook (after-init . beacon-mode))

;; 主题包
(use-package 
  doom-themes 
  :ensure t
  :defer
  ;; :config (load-theme 'doom-dracula t))
  )
;; (use-package
;;   spacemacs-common
;;   :ensure spacemacs-theme
;;   :defer)

;; 自动切换主题
(use-package
  circadian
  :ensure t
  :config
  ;; 经纬度，可以在https://www.latlong.net/获取，默认是广州的
  (setq calendar-latitude 23.130280
	calendar-longitude 113.288879
	;; sunrise 白天用的主题 sunset 晚上用的主题
	circadian-themes '((:sunrise . doom-monokai-pro)
			   (:sunset . oswald)))
  (circadian-setup))

(use-package posframe
  :ensure t)

(push '(progn
		 ;; 图标支持
		 (use-package 
		   all-the-icons 
		   :ensure t)
		 ;; dired模式图标支持
		 (use-package 
		   all-the-icons-dired 
		   :load-path "~/.emacs.d/site-lisp/all-the-icons-dired"
		   :hook ('dired-mode . 'all-the-icons-dired-mode))
		 ;; 表情符号
		 (use-package 
		   emojify
		   :after telega
		   :custom (emojify-emojis-dir "~/.emacs.d/var/emojis")
		   :config
		   (global-emojify-mode))
		 ;; 浮动窗口支持
		 (use-package 
		   posframe 
		   :ensure t)) graphic-only-plugins-setting)

;; 竖线
(use-package 
  page-break-lines 
  :ensure t 
  :config (turn-on-page-break-lines-mode))

;; 启动界面
(use-package 
  dashboard 
  :ensure t 
  :config (dashboard-setup-startup-hook)
  (dashboard-modify-heading-icons '((recents . "file-text") 
                                    (bookmarks . "book")))
  ;; 设置标题
  (setq dashboard-banner-logo-title
        "Everyday creates your history")
  ;; 设置banner
  (setq dashboard-startup-banner "~/.emacs.d/var/banner/ue-colorful.png") 
  (setq dashboard-center-content t) 
  (setq dashboard-set-heading-icons t) 
  ;; (setq dashboard-set-file-icons t) 
  (setq dashboard-set-navigator t))


;; modeline样式
(use-package 
  doom-modeline
  :ensure t 
  :init (doom-modeline-mode 1) 
  :config (setq doom-modeline-height 10)
  (custom-set-faces '(mode-line ((t 
                                  (:family evan/font-name
                                           :style evan/font-style
                                           :height 125)))) 
                    '(mode-line-inactive ((t 
                                           (:family evan/font-name
                                                    :style evan/font-size
                                                    :height 125))))))
;; 彩虹括号
(use-package 
  rainbow-delimiters 
  :ensure t 
  :config
  ;; 设置每一级括号的颜色
  (set-face-foreground 'rainbow-delimiters-depth-1-face "orange red") 
  (set-face-foreground 'rainbow-delimiters-depth-2-face "gold") 
  (set-face-foreground 'rainbow-delimiters-depth-3-face "yellow") 
  (set-face-foreground 'rainbow-delimiters-depth-4-face "spring green") 
  (set-face-foreground 'rainbow-delimiters-depth-5-face "cyan") 
  (set-face-foreground 'rainbow-delimiters-depth-6-face "magenta") 
  (set-face-foreground 'rainbow-delimiters-depth-7-face "goldenrod") 
  (set-face-foreground 'rainbow-delimiters-depth-8-face "IndianRed1") 
  (set-face-foreground 'rainbow-delimiters-depth-9-face "ivory1") 
  (set-face-bold 'rainbow-delimiters-depth-1-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-2-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-3-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-4-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-5-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-6-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-7-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-8-face "t") 
  (set-face-bold 'rainbow-delimiters-depth-9-face "t") 
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;; 让info帮助信息中关键字有高亮
(use-package 
  info-colors 
  :ensure t 
  :hook ('Info-selection-hook . 'info-colors-fontify-node))

;; 缩进线
(use-package
  indent-guide
  :ensure t
  :hook (prog-mode . indent-guide-mode))

;; 为上层提供 init-ui 模块
(provide 'init-ui)
