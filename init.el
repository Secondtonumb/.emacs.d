;; Elisp 函数快速查找
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; 关闭自动备份
(setq make-backup-files nil)

;;speedbar

(global-set-key (kbd "C-t") 'sr-speedbar-toggle)
(setq sr-speedbar-right-side nil)
;; 关闭menu-bar
;;(menu-bar-mode 0)

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

;;主题设置
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(ecb-options-version "2.50")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(package-selected-packages
   (quote
    (json-mode company-statistics origami elscreen imenu-list nerdtab netease-music multi-term ppd-sr-speedbar python-mode pyimport elpy ecb company tabbar-ruler python py-autopep8 org2ctex org2blog molokai-theme math-symbol-lists flycheck-irony evil-matchit evil-leader company-irony color-theme auto-correct auto-complete-c-headers ace-window ac-clang)))
 '(python-shell-buffer-name "iPython")
 '(python-shell-interpreter "ipython"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;company
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "TAB") 'company-complete)

;;;;;;;;;;;;;;;;;;;;;;;;; begin elpy ;;;;;;;;;;;;;;;;;;;;;;;
(package-initialize)
(elpy-enable)
;;;;;;;;;;;;;;;;;;;;;;;;; end elpy ;;;;;;;;;;;;;;;;;;;;;;;;;

(set-face-attribute
 'default nil :font "Monaco 12")

;; Enable mouse support
(unless window-system
  (require 'mouse)1
  (xterm-mouse-mode t) ;;
  (global-set-key [mouse-4] '(lambda ()
                                  (interactive)
                                  (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                                  (interactive)
                                  (scroll-up 1)))
)
;; Run C programs directly from within emacs
;; (defun execute-c++-program ()
;;   (interactive)
;;   (defvar foo)
;;   (setq foo (concat "g++ " (buffer-name) " && ./a.out" ))
;;   (shell-command foo))

;; ;;c++ compiler
;; (global-set-key (kbd "<f5>") 'execute-c++-program)

;; multi-term
(global-set-key (kbd "C-u") 'multi-term-dedicated-toggle)

;;tab bar
(global-origami-mode t)
(global-set-key (kbd "<f6>") 'origami-recursively-toggle-node)
(global-set-key (kbd "<f7>") 'origami-close-all-nodes)
(global-set-key (kbd "<f8>") 'origami-open-all-nodes)

;;yasnippet
(require 'yasnippet)
(yas-global-mode 1)
