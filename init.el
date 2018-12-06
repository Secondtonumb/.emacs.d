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
(global-set-key (kbd "C-<f2>") 'open-init-file)

;; 快速打开最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

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
    (company-anaconda anaconda-mode markdown-mode+ markdown-preview-mode markdown-mode http-post-simple json-mode company-statistics origami elscreen imenu-list nerdtab multi-term ppd-sr-speedbar python-mode pyimport elpy ecb company tabbar-ruler python py-autopep8 org2ctex org2blog molokai-theme math-symbol-lists flycheck-irony evil-matchit evil-leader company-irony color-theme auto-correct auto-complete-c-headers ace-window ac-clang)))
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

;; markdown-preview
;; 需要先连接 pandoc所在的文件夹
(setq markdown-command "/home/kevingeng/anaconda3/bin/pandoc")

;; helm
;;(global-set-key (kbd "M-x") 'helm-M-x)
;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
;; (require 'helm)
;; (require 'helm-config)

;; ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;; (global-set-key (kbd "C-c h") 'helm-command-prefix)
;; (global-unset-key (kbd "C-x c"))

;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;; (when (executable-find "curl")
;;   (setq helm-google-suggest-use-curl-p t))

;; (setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
;;       helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;;       helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;       helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;       helm-ff-file-name-history-use-recentf t
;;       helm-echo-input-in-header-line t)

;; (defun spacemacs//helm-hide-minibuffer-maybe ()
;;   "Hide minibuffer in Helm session if we use the header line as input field."
;;   (when (with-helm-buffer helm-echo-input-in-header-line)
;;     (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
;;       (overlay-put ov 'window (selected-window))
;;       (overlay-put ov 'face
;;                    (let ((bg-color (face-background 'default nil)))
;;                      `(:background ,bg-color :foreground ,bg-color)))
;;       (setq-local cursor-type nil))))


;; (add-hook 'helm-minibuffer-set-up-hook
;;           'spacemacs//helm-hide-minibuffer-maybe)

;; (setq helm-autoresize-max-height 0)
;; (setq helm-autoresize-min-height 20)
;; (helm-autoresize-mode 1)

;; (helm-mode 1)
