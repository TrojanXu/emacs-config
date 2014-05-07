;;cuda -->> c++
;; (setq auto-mode-alist (append '(("\\.cu$" . c++-mode)) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;自动补齐设置                              按下 M - / 键(一般而言就是Alt + /),emacs会帮你补全你正在打的关键字
 ;;  (global-set-key [(meta ?/)] 'hippie-expand)
 ;; (setq hippie-expand-try-functions-list 
 ;;       '(try-expand-dabbrev
 ;;     try-expand-dabbrev-visible
 ;;     try-expand-dabbrev-all-buffers
 ;;     try-expand-dabbrev-from-kill
 ;;     try-complete-file-name-partially
 ;;     try-complete-file-name
 ;;     try-expand-all-abbrevs
 ;;     try-expand-list
 ;;     try-expand-line
 ;;     try-complete-lisp-symbol-partially
 ;;     try-complete-lisp-symbol))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  "Replacement for the comment-dwim command. If no region is selected and current line is not blank and we are not at the end of the line, then comment current line. Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
;;M+;注释功能扩展

(defun qiang-comment-dwim-line (&optional arg)

  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "xth@%b") 

;; 设置默认tab宽度为4
(setq tab-width 4
indent-tabs-mode t
c-basic-offset 4)

;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)


(show-paren-mode t) 
(setq show-paren-style 'parentheses) 
