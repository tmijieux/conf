(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq-default c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq tab-width 8)
(setq c-basic-offset 4)
(setq js-indent-level 2)
(fset 'yes-or-no-p 'y-or-n-p)

(setq helm-always-two-windows nil)
(setq helm-display-buffer-default-height 23)
(setq helm-default-display-buffer-functions '(display-buffer-in-side-window))

(column-number-mode 1)
(global-auto-revert-mode 1)

(c-add-style
 "my-style"
 '("ellemtel"
   (c-basic-offset . 4)
   (c-offsets-alist
    (innamespace . 0)
    (inextern-lang . 0)
    (inline-open . 0)
    (access-label . -)
    (cpp-macro . 0)
    (label . 0)
    (case-label . 4)
    (statement-case-intro . +)
    (arglist-close . 0)
    )))
;; http://blogs.msdn.com/b/dotnetinterop/archive/2008/04/14/dino-s-emacs-file.aspx
(c-add-style "csharp"
 '("Java"
   ;;(c-basic-offset . 2)
   (c-basic-offset . 4)
   (c-comment-only-line-offset . (0 . 0))
   (c-offsets-alist
    . (
       (access-label . -)
       (arglist-close . 0)
       (arglist-cont . 0)
       (arglist-cont-nonempty . c-lineup-arglist)
       (arglist-intro . 4)
       (block-close . 0)
       (block-open . 0)
       (brace-entry-open . 0)
       (brace-list-close . 0)
       (brace-list-entry . 0)
       (brace-list-intro . +)
       (brace-list-open . +)
       (c . c-lineup-C-comments)
       (case-label . 0)
       (catch-clause . 0)
       (class-close . 0)
       (class-open . 0)
       (comment-intro . c-lineup-comment)
       (cpp-macro . 0)
       (cpp-macro-cont . c-lineup-dont-change)
       (defun-block-intro . +)
       (defun-close . 0)
       (defun-open . 0)
       (do-while-closure . 0)
       (else-clause . 0)
       (extern-lang-close . 0)
       (extern-lang-open . 0)
       (friend . 0)
       (func-decl-cont . +)
       (inclass . +)
       (inexpr-class . 0)
       (inexpr-statement . 0)
       (inextern-lang . +)
       (inher-cont . c-lineup-multi-inher)
       (inher-intro . +)
       (inlambda . c-lineup-inexpr-block)
       (inline-close . 0)
       (inline-open . 0)
       (innamespace . +)
       (knr-argdecl . 0)
       (knr-argdecl-intro . 5)
       (label . 0)
       (lambda-intro-cont . +)
       (member-init-cont . c-lineup-multi-inher)
       (member-init-intro . +)
       (namespace-close . 0)
       (namespace-open . 0)
       (objc-method-args-cont . c-lineup-ObjC-method-args)
       (objc-method-call-cont . c-lineup-ObjC-method-call)
       (objc-method-intro . [0])
       (statement . 0)
       (statement-block-intro . +)
       (statement-case-intro . +)
       (statement-case-open . +)
       (statement-cont . +)
       (stream-op . c-lineup-streamop)
       (string . c-lineup-dont-change)
       (substatement . +)
       (substatement-open . 0)
       (template-args-cont c-lineup-template-args +)
       (topmost-intro . 0)
       (topmost-intro-cont . 0)
       ))
   ))
(c-add-style "my-csharp-style"
  '("csharp"  ; this must be defined elsewhere
    ;;(c-basic-offset . 2)
  (c-basic-offset . 4)
  (c-echo-syntactic-information-p . t)
  (c-comment-only-line-offset . (0 . 0))
  (c-offsets-alist . (
    (c                     . c-lineup-C-comments)
    (namespace-open        . 0)
    (namespace-close       . 0)
    (innamespace           . +)
    (class-open            . 0)
    (class-close           . 0)
    (inclass               . +)
    (block-open            . -)    ; eg, open a block under a function name or if stmt;
                                   ; want this to be flush with prev line.
    (arglist-cont          . 0)
    (substatement-open     . 0)  ; I think this is for a try {} or if{} or etc. why this is not block open, I don't know!
    (defun-open            . 0)  ; method defn? (but no!)
    (defun-block-intro     . +)  ;0 ; block within a function????
    (inline-open           . 0)  ; eg, opening a function? ??
    (statement-block-intro . +)  ; unknown what this is
    (brace-list-open       . 0)  ; list open (like an enum, array initializer)
    (brace-list-intro      . +)  ; first item in the list
    (brace-list-entry      . 0)  ; subsequent items in the list
    (brace-list-close      . 0)  ; list close
    ;(statement-cont        . (dinoch-csharp-lineup-string-cont +))  ; align long strings
    ))
  ))

(defun set-my-style ()
  (c-set-style "my-style")
  (setq helm-exit-idle-delay 0)
  )

(defun set-my-csharp-style ()
  (c-set-style "my-csharp-style")
  (setq helm-exit-idle-delay 0)
  )

(defun my-prog-mode ()
  (show-paren-mode)
  (anzu-mode)
  ;;  (company-mode)
  (helm-mode)
  (ggtags-mode)
  (nlinum-mode)
  (yas-global-mode 1)
  ;;(helm-gtags-mode 1)
  )
(defun my-web-mode-hook ()
  "hooks for web mode"
  (setq web-mode-markup-indent-offset 2)
  )
(add-hook 'web-mode-hook 'my-web-mode-hook)

(add-hook 'c-mode-hook 'set-my-style)
(add-hook 'csharp-mode-hook 'set-my-csharp-style)
(add-hook 'c++-mode-hook 'set-my-style)
(add-hook 'prog-mode-hook 'my-prog-mode)

(defun insert-header-guard ()
  (interactive)
  (if (buffer-file-name)
      (let*
          ((fName (upcase (file-name-nondirectory
                           (file-name-sans-extension buffer-file-name))))
           (ifDef (concat "#ifndef " fName "_H" "\n#define " fName "_H" "\n"))
           (begin (point-marker)))
        (progn
          ;; If less then 5 characters are in the buffer,
          ;; insert the class definition
          (if (< (- (point-max) (point-min)) 5 )
              (progn
                (insert "\nclass "
                        (capitalize fName)
                        "\n{\npublic:\n\nprivate:\n\n}; // class "
                        (capitalize fName)
                        "\n"
                        )
                (goto-char (point-min))
                (next-line-nomark 3)
                (setq begin (point-marker))))

          ;;Insert the Header Guard
          (goto-char (point-min))
          (insert ifDef)
          (goto-char (point-max))
          (insert "\n#endif" " // " fName "_H")
          (goto-char begin)))
    ;;else
    (message (concat "Buffer " (buffer-name)
                     " must have a filename"))))

;; (global-set-key (kbd "s-SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)
(global-set-key (kbd "C-c i") 'indent-region)
(global-set-key (kbd "M-\"") 'insert-pair)
(global-set-key (kbd "M-/") 'dabbrev-expand)
;; (global-set-key (kbd "M-*") 'hippie-expand)
(global-set-key (kbd "M-§") 'helm-dabbrev)
(global-set-key (kbd "M-ù") 'hippie-expand)
(global-set-key (kbd "C-x r i") 'string-insert-rectangle)
(global-set-key (kbd "C-j") 'yas-expand)
(global-set-key  [f12] 'insert-header-guard)

(xterm-mouse-mode nil)

(push '("\\.cmake\\'" . cmake-mode) auto-mode-alist)
(push '("CMakeLists\\.txt\\'" . cmake-mode) auto-mode-alist)

(org-babel-do-load-languages
 'org-babel-load-languages '((shell . t)) )

(setq ob-async-no-async-languages-alist '("ipython" "shell"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(helm-always-two-windows nil)
 '(helm-display-buffer-default-height 23)
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages
   (quote
    (omnisharp ob-async csharp-mode web-mode yaml-mode lua-mode yasnippet company cmake-mode ggtags helm-gtags anzu helm nlinum)))
 '(show-paren-mode t)
 '(show-trailing-whitespace t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 113 :width normal)))))
