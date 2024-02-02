;;; init-magit.el --- summary -*- lexical-binding: t -*-

;; Author: kylinbachelor
;; Maintainer: None
;; Version: 1.0
;; Package-Requires: (dependencies)
;; Homepage: homepage
;; Keywords: keywords


;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:

;; magit配置

;;; Code:

(message "Welcome to init-magit!")

(use-package magit
  :ensure t
  :init
  (global-set-key (kbd "C-x g") 'magit-status) ; 将 C-x g 绑定到 magit-status
  :config
  ;; 在这里添加你的自定义配置，例如：
  (setq magit-status-sections-hook 'magit-insert-headers) ; 在状态缓冲区插入头部信息
  (setq magit-log-show-header nil) ; 不显示日志头部信息
  (setq magit-diff-auto-refresh nil) ; 关闭自动刷新差异
  :bind
  (("C-x g" . magit-status) ; 再次绑定，确保新的设置生效
   ("C-c m l" . magit-list-files)
   ("C-c m d" . magit-dispatch)))

(provide 'init-magit)

;;; init-magit.el ends here
