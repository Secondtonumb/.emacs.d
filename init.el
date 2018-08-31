;; Elisp 函数快速查找
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; 关闭自动备份
(setq make-backup-files nil)

;; 关闭menu-bar
(menu-bar-mode 0)

;; 开启行号显示
;; (global-linum-mode 1)

(delete-selection-mode 1)
(set-face-attribute 'default nil :height 160)

;; 快速打开初始文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; 快速打开最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; 更改删除功能
(delete-selection-mode 1)

;;自动补全
(global-auto-complete-mode t);;我个人比较喜欢auto-complete

;;主题设置
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(molokai))
 '(custom-safe-themes
   '("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default))
 '(package-selected-packages
   '(tabbar-ruler python py-autopep8 org2ctex org2blog molokai-theme math-symbol-lists flycheck-irony evil-matchit evil-leader company-irony color-theme auto-correct auto-complete-c-headers ace-window ac-clang)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
