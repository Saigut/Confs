;;===========================================================================
;;sr-speedbar-mode
;;===========================================================================

(require 'sr-speedbar)
;;默认显示所有文件
(custom-set-variables
 '(speedbar-show-unknown-files t)
)

;;sr-speedbar-right-side 把speedbar放在左侧位置
;;sr-speedbar-skip-other-window-p 多窗口切换时跳过speedbar窗口
;;sr-speedbar-max-width与sr-speedbar-width-x 设置宽度
(custom-set-variables
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p nil)
 '(semantic-tag-hierarchy-method nil)
; '(sr-speedbar-max-width 20)
;'(sr-speedbar-width-x 10)
;'(sr-speedbar-width-console 5)
; '(sr-speedbar-default-width 30)
 '(sr-speedbar-width 33)
)

;; 绑定快捷键
(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
;(global-set-key (kbd "s-r") 'sr-speedbar-refresh-toggle)

;; 打开
;; (sr-speedbar-open)
