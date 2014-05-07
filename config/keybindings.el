;;  c-x left,right switch the buffer//default



;; ;;----------------------------------------------------------------------------
;; ;; When splitting window, show (other-buffer) in the new window
;; ;;----------------------------------------------------------------------------
;; (defun split-window-func-with-other-buffer (split-function)
;;   (lexical-let ((s-f split-function))
;;     (lambda ()
;;       (interactive)
;;       (funcall s-f)
;;       (set-window-buffer (next-window) (other-buffer)))))

;; (global-set-key "\C-x2" (split-window-func-with-other-buffer 'split-window-vertically))
;; (global-set-key "\C-x3" (split-window-func-with-other-buffer 'split-window-horizontally))


;; ;;----------------------------------------------------------------------------
;; ;; Rearrange split windows
;; ;;----------------------------------------------------------------------------
;; (defun split-window-horizontally-instead ()
;;   (interactive)
;;   (save-excursion
;;     (delete-other-windows)
;;     (funcall (split-window-func-with-other-buffer 'split-window-horizontally))))

;; (defun split-window-vertically-instead ()
;;   (interactive)
;;   (save-excursion
;;     (delete-other-windows)
;;     (funcall (split-window-func-with-other-buffer 'split-window-vertically))))

;; (global-set-key "\C-x|" 'split-window-horizontally-instead)
;; (global-set-key "\C-x_" 'split-window-vertically-instead)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(global-set-key (kbd "M-k") 'kill-line)
;;(global-set-key (kbd "C-k") 'kill-whole-line)

;; (global-set-key (kbd "C-d") 'nil)
;; (global-set-key (kbd "C-d") 'backward-delete-char-untabify)
(global-set-key [C-backspace] 'backward-kill-word)
;;(global-set-key [M-j] 'goto-line) ;;goto-line
;; (global-set-key [M-k] 'kill-whole-line)
(global-set-key (kbd "M-k") 'nil)
(global-set-key (kbd "M-k") 'kill-whole-line)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
