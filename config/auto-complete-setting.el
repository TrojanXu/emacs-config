(add-to-list 'load-path  "~/Extended/emacs/config/auto-complete")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/Extended/emacs/config/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)
;;(require 'init-auto-complete)

;;set face
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

;; Ignore case if completion target string doesn't include upper characters
;; (setq ac-ignore-case 'smart)

(global-auto-complete-mode t)           ;enable global-mode
(setq ac-auto-start t)                  ;automatically start
(setq ac-dwim t)                        ;Do what i mean
(setq ac-override-local-map t)        ;don't override local map

;; if you want enable auto-complete at org-mode, uncomment this line
;; (add-to-list 'ac-trigger-commands 'org-self-insert-command) 


;; (defun ac-cmake-mode-setup ()
;;   (setq ac-sources (append '(ac-source-yasnippet  ac-source-dictionary) ac-sources)))
;; (add-hook 'cmake-mode-hook 'ac-cmake-mode-setup)

;;use C-n/C-p to select candidates
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(define-key ac-complete-mode-map "\t" 'ac-complete)
(define-key ac-complete-mode-map "\r" nil)

;; (setq ac-auto-start nil)
;; (define-key ac-mode-map "\M-j" 'auto-complete)


