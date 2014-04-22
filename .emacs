(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(indent-tabs-mode t)
 '(load-home-init-file t t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans" :foundry "unknown" :slant normal :weight normal :height 122 :width normal)))))
(global-set-key (kbd "C-c p")   'windmove-up)
(global-set-key (kbd "C-c n")   'windmove-down)
(global-set-key (kbd "C-c b")   'windmove-left)
(global-set-key (kbd "C-c f")   'windmove-right)
;;(set-fontset-font "fontset-default" 'unicode '("WenQuanYi Zen Hei" . "unicode-ttf"))
(defun word-count nil "Count words in buffer" (interactive)
(shell-command-on-region (point-min) (point-max) "wc -"))

;(global-linum-mode 1) ; always show line numbers
;(setq linum-format "%2d ")  ;set format  

(add-to-list 'load-path "~/.emacs.d")
(require 'go-mode-load)
(setq c-tab-always-indent nil)

;;(setq inhibit-splash-screen t)
;;(setq inhibit-startup-message t)
