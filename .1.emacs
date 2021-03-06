(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(ido-enable-flex-matching t)
 '(make-backup-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; ido mode
(require 'ido)
(ido-mode t)

;;; Line number
(global-linum-mode 1)  ; always show line numbers
(setq linum-format "%2d ")  ; set format

;;; screen scroll
(setq scroll-step            1
      scroll-conservatively  10000)

;;; scroll one line at a time (less "jumpy" than defaults)
;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
;(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
;(setq mouse-wheel-follow-mouse 't) ; scroll window under mouse
;(setq scroll-step 1) ; keyboard scroll one line at a time
