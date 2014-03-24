;;color theme
(add-to-list 'custom-theme-load-path "~/Extended/emacs/themes/")
(load-theme 'zenburn t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;ibus config
(require 'ibus)
 (add-hook 'after-init-hook 'ibus-mode-on)

;; Use C-SPC for Set Mark command

(ibus-define-common-key ?\C-\s nil)

;; Use C-/ for Undo command

(ibus-define-common-key ?\C-/ nil)

;; Change cursor color depending on IBus status

(setq ibus-cursor-color '("yellow" "grey" "limegreen"))

;; Use s-SPC to toggle input status

(global-set-key (kbd "s-SPC") 'ibus-toggle)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;window numbering
(require 'window-numbering)
(window-numbering-mode 1)
;;M+9 for calculator
    (setq window-numbering-assign-func
          (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/Extended/emacs/config/expand-region")  
(require 'expand-region)  
(global-set-key (kbd "C-;") 'er/expand-region)  
(global-set-key (kbd "C-'") 'er/contract-region)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/Extended/emacs/config/multiple-cursors")  
(require 'multiple-cursors)  
(global-set-key (kbd "C-x e") 'mc/edit-lines)  
(global-set-key (kbd "C->") 'mc/mark-next-lines)
(global-set-key (kbd "C-<") 'mc/mark-previous-lines)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'windows)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 默认显示 100列就换行 
;(setq default-fill-column 100)
;; 显示列号
 (setq column-number-mode t)
;; (setq line-number-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 显示时间，格式如下
(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 
;;行距
;;(setq default-line-spacing 4)
;;no ~file
(setq-default make-backup-files nil) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;company mode
;; (add-to-list 'load-path "~/Extended/emacs/config/company-mode")
  (add-to-list 'load-path "~/Extended/emacs/config/cedet/common")
  (load "~/Extended/emacs/config/cedet/common/cedet" nil t)
;; ;;(add-hook 'after-init-hook 'global-company-mode)
;; (autoload 'company-mode "company" nil t)
;; (setq company-idle-delay t)

;;semantic setting
(setq semanticdb-default-save-directory "~/Extended/emacs/config/cedet/semanticdb")
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)

(global-set-key [f5] 'semantic-ia-fast-jump) ;;跳转到代码声明处
(global-set-key [C-f5] 'semantic-symref) ;;列出当前tag的reference，即functioncall之类的，这个在fortran也能用
(global-set-key [f6]
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))));;跳回代码实现处
;;代码折叠
(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)
(define-key semantic-tag-folding-mode-map (kbd "C-=") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-+") 'semantic-tag-folding-show-block)

;; (define-key c-mode-base-map [C-f5] 'semantic-analyze-proto-impl-toggle);;效果不好
;; (semantic-load-enable-guady-code-helpers)
;; (semantic-load-enable-excessive-code-helpers)
;; (semantic-load-enable-semantic-debugging-helpers);;包含最近输入的标记已经无法解析的语法红色下划线
;; (semantic-load-enable-code-helpers) ;;semantic的自动补全快捷键
;; (global-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)

;;semantic选择global的tags
;; (require 'semanticdb-global)
;; (semanticdb-enable-gnu-global-databases 'c-mode)
;; (semanticdb-enable-gnu-global-databases 'c++-mode)

;; ;; 为 Unix Shell, Perl, Pascal, Tcl, Fortran, Asm等语言起用 ctags支持
;; (semantic-load-enable-primary-exuberent-ctags-support)




;; (add-to-list 'load-path  "~/Extended/emacs/config/yasnippet")
;; (require 'yasnippet)
;; (yas-global-mode 1)


;;(require 'auto-complete)
;;(yas-global-mode 1)
(require 'cuda-mode)
;; (autoload 'cuda-mode "cuda-mode.el")	
;; (add-to-list 'auto-mode-alist '("\\.cu'" . cuda-mode))


(add-to-list 'load-path "~/Extended/emacs/config/dash.el-master")   
(add-to-list 'load-path "~/Extended/emacs/config/smartparens")   

(require 'smartparens-config)  
(smartparens-global-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 用M-x执行某个命令的时候，在输入的同时给出可选的命令名提示
(icomplete-mode 1)
(define-key minibuffer-local-completion-map (kbd "SPC") 'minibuffer-complete-word)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(tool-bar-mode -1);; 不显示emcas的工具栏
(menu-bar-mode -1);; 不显示emcas的菜单栏,按ctrl+鼠标右键仍能调出该菜单
(setq visible-bell t);关闭出错时的蜂鸣提示声
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;配置gtags
;; (add-to-list 'load-path "~/emacs/global")
;; (autoload 'gtags-mode "gtags" "" t)
;; (setq c-mode-hook '(lambda ()
;; 		     (gtags-mode 1)))
;; (global-set-key (kbd "C-c g f") 'gtags-find-tag)
;; (global-set-key (kbd "C-c g p") 'gtags-pop-stack)
;; (global-set-key (kbd "C-c g s") 'gtags-select-tag)
