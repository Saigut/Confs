(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(c-default-style "cc-mode")
 '(custom-enabled-themes (quote (deeper-blue)))
 '(ido-enable-flex-matching t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(semantic-tag-hierarchy-method nil)
 '(show-paren-mode t)
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p nil)
 '(sr-speedbar-width 33 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight normal :height 110 :width normal)))))

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(add-to-list 'load-path "~/.emacs.d/elisp")
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)

(add-hook 'scheme-mode-hook
  (lambda ()
    (paredit-mode 1)
    (define-key scheme-mode-map (kbd "<f5>") 'scheme-send-last-sexp-split-window)
    (define-key scheme-mode-map (kbd "<f6>") 'scheme-send-definition-split-window)))

(add-to-list 'auto-mode-alist '("\\.sls\\'" . scheme-mode))

(require 'parenface)
(set-face-foreground 'paren-face "DimGray")

;;; Load el files
;; (load-file "~/.emacs.d/load-directory.el")
;; (require 'load-directory)
;; (load-directory "~/.emacs.d/elisp")
;(load-file "~/.emacs.d/elisp/sr-speedbar.el")
(load-file "~/.emacs.d/elisp/sr-speedbar-emacs-config.el")
;; fix windows
;(sr-speedbar-open)
;(with-current-buffer sr-speedbar-buffer-name
;(setq window-size-fixed 'width))

;;; ido mode
(require 'ido)
(ido-mode t)

;;; ggtags mode
(global-set-key (kbd "C-c C-g") 'ggtags-mode)
;(ggtags-mode)

;;; heml-gtags
(global-set-key (kbd "C-c b") 'helm-gtags-dwim)

;;; ctags
;(require 'ctags)
;(setq tags-revert-without-query t)
;(global-set-key (kbd "<f7>") 'ctags-create-or-update-tags-table)

;;; Sr Speedbar
;; (require 'sr-speedbar)
;; (global-set-key (kbd "s-s") 'sr-speedbar-toggle)

;; paredit-mode
(global-set-key (kbd "C-c p") 'paredit-mode)

;;; Line number
(global-linum-mode 1)  ; always show line numbers
(setq linum-format "%2d ")  ; set format

;;; screen scroll
(setq scroll-step            1
      scroll-conservatively  10000)

;; (when window-system  ; start speedbar if we're using a window system
;;   (speedbar t))

;;; scroll one line at a time (less "jumpy" than defaults)
;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
;(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
;(setq mouse-wheel-follow-mouse 't) ; scroll window under mouse
;(setq scroll-step 1) ; keyboard scroll one line at a time

