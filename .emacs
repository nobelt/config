;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(setq package-enable-at-startup nil)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://melpa.org/packages/")))
(package-initialize)

;; Load path to custom theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Substitue y-or-n-p for yes-or-no-p
(defalias 'yes-or-no-p 'y-or-n-p)

;; Do not blink cursor
(blink-cursor-mode -1)

;; Highlight region when mark is active
(transient-mark-mode 1)

;; Tab settings
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq-default c-basic-offset 8)

;; Visualize matching parens
(show-paren-mode 1)

;; Use DEL to delete a selected text
(delete-selection-mode 1)

;; Highlight lines that are over 80 col
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; Show line numbers with margin
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")

;; Enable interactively do things (ido)
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(ido-everywhere t)

;; Smooth Scrolling
(setq-default scrool-step 1)
(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line
(setq-default mouse-wheel-progressive-speed nil) ;; don't accelerate
(setq-default mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-conservatively 1000 scroll-preserve-screen-position 1)

;; Backup files
(setq backup-directory-alist '(("." . "~/.saves"))
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 10
      kept-old-versions 2
      version-control t)

;; Turn off bell sound
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; Mouse commands
(require 'mouse)
(xterm-mouse-mode t)

;; Auto revert buffer when file changes
(global-auto-revert-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("0f0a885f4ce5b6f97e33c7483bfe4515220e9cbd9ab3ca798e0972f665f8ee4d" default)))
 '(package-selected-packages (quote (zenburn-theme neotree orgalist))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
