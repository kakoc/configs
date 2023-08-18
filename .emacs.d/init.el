(add-to-list 'load-path "~/Downloads/org-mode/lisp")
(require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa"        . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org"          . "https://orgmode.org/elpa/") t)

(package-initialize)

;; (add-hook 'org-mode-hook '(lambda ()
;;         (progn
;;           (truncate-lines nil)
;;           (setq word-wrap t)
;;     (visual-line-mode t)
;;       )))

(unless (package-installed-p 'use-package)
   (message "EMACS install use-package.el")
    (package-install 'use-package))

;; (require 'org)
;; (require 'ob)
;; (require 'ob-clojure)

(require 'dired)
(when (require 'dired-sync nil t)
     (define-key dired-mode-map (kbd "C-c s") 'dired-do-sync))

;; (org-babel-do-load-languages 'org-babel-load-languages
;;     '(
;;         (shell . t)
;;         (js . t)
;;   (clojure . t)
;;     )
;; )

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t)
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(ediff-diff-options "-w")
 '(ediff-split-window-function 'split-window-horizontally)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(package-selected-packages
   '(lsp-haskell haskell-mode python-black dap-gdb-lldb dap-mode hover dart-server lsp-dart lsp-mode neotree zig-mode tree-sitter-langs tree-sitter evil-collection undo-fu yaml-mode dotenv-mode dart-mode flycheck-rust cargo racer rust-mode pg cider paren-face eglot add-node-modules-path prettier-js use-package typescript-mode rainbow-delimiters projectile org-bullets orderless ob-mongo ob-http ob-async minions magit ivy-posframe hyperbole git-gutter-fringe flycheck exec-path-from-shell evil-surround evil-mc evil-leader evil-commentary editorconfig diff-hl company color-theme-sanityinc-tomorrow ag ace-jump-mode))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrainsMono Nerd Font" :foundry "JB" :slant normal :weight light :height 143 :width normal))))
 '(font-lock-function-name-face ((t (:foreground "#81a2be"))))
 '(ivy-posframe ((t (:background "#000000"))))
 '(ivy-posframe-border ((t (:background "#E552F7"))))
 '(ivy-posframe-cursor ((t (:background "#E552F7"))))
 '(org-block ((t (:background "#000000"))))
 '(org-block-background ((t (:background "#000000"))))
 '(org-block-begin-line ((t (:foreground "#008ED1" :background "#002E41"))))
 '(org-block-end-line ((t (:foreground "#008ED1" :background "#002E41")))))
