(defconst my-c-style
  '((c-tab-always-indent        . t)
    ;; (c-comment-only-line-offset . 4)
    (c-hanging-braces-alist     . ((substatement-open after)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   defun-close-semi))
    (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
                                   (substatement-open . 0)
                                   (case-label        . 4)
                                   (block-open        . 0)
                                   (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t))
  "My C Programming Style")
(c-add-style "PERSONAL" my-c-style)


(defun my-c-mode-common-hook ()
  ;; set my personal style for the current buffer
  (c-set-style "PERSONAL")
  ;; other customizations
  (setq tab-width 4
        ;; this will make sure spaces are used instead of tabs
        indent-tabs-mode nil)
  ;; we like auto-newline, but not hungry-delete
  (c-toggle-auto-newline 1))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
