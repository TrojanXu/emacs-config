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
 ;; (add-to-list 'load-path "~/Extended/emacs/config/cedet/common")
 ;; (load "~/Extended/emacs/config/cedet/common/cedet" nil t)
;; ;;(add-hook 'after-init-hook 'global-company-mode)
;; (autoload 'company-mode "company" nil t)
;; (setq company-idle-delay t)


;; (setq semanticdb-default-save-directory "~/Extended/emacs/config/cedet/semanticdb")
;; (semantic-load-enable-code-helpers) ;;semantic的自动补全快捷键
;; (global-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)



;; (add-to-list 'load-path  "~/Extended/emacs/config/yasnippet")
;; (require 'yasnippet)
;; (yas-global-mode 1)


;;(require 'auto-complete)
;;(yas-global-mode 1)
