(require 'package)

(package-initialize) ;; You might already have this line

(setq package-archives '(("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	                     ("org-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'init-package)
 
