(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(make-backup-files nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 112 :width normal)))))

;;; For Ido-mode
(require 'ido)
(ido-mode t)

;;; Open url with Google Chrome
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome-stable")

;;; Set theme
;(color-theme-initialize)
;(color-theme-vim-colors)

;;; Line number
(global-linum-mode 1)  ; always show line numbers
(setq linum-format "%2d ")  ; set format
