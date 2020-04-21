(setq package-check-signature nil)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("ELPA"  . "https://tromey.com/elpa/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.milkbox.net/packages/")
			 ))

(package-initialize)

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit flycheck-clang-analyzer flycheck-irony irony-eldoc company-irony company-c-headers flycheck company smex htmlize plantuml-mode highlight-symbol auctex use-package)))
 '(safe-local-variable-values
   (quote
    ((eval progn
	   (setq company-c-headers-path-user
		 (delete-dups
		  (append company-c-headers-path-user
			  (list "/home/aztech/works/aztech_sps100/1113driver/knx" "/home/aztech/works/aztech_sps100/1113driver/knx/common" "/home/aztech/works/aztech_sps100/1113driver/knx/control" "/home/aztech/works/aztech_sps100/1113driver/knx/dlist" "/home/aztech/works/aztech_sps100/1113driver/knx/HAL" "/home/aztech/works/aztech_sps100/1113driver/knx/init" "/home/aztech/works/aztech_sps100/1113driver/knx/init/cfg" "/home/aztech/works/aztech_sps100/1113driver/knx/parse" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/cEMI" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/cEMI/AL" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/cEMI/DLL" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/cEMI/NL" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/cEMI/TL" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/filter" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/GA" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/HID" "/home/aztech/works/aztech_sps100/1113driver/knx/parse/TPH" "/home/aztech/works/aztech_sps100/1113driver/knx/receive" "/home/aztech/works/aztech_sps100/1113driver/knx/store")))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
