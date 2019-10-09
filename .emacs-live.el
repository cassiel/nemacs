;;(live-use-packs '(live/foundation-pack live/colour-pack live/clojure-pack live/lang-pack live/power-pack live/git-pack))

;;(live-add-packs '(live/git-pack))

;;(defun gandalf ()
;;  (interactive)
;;  (color-theme-gandalf)
;;  (set-face-background 'hl-line "#CCCCCC")
;;  (set-face-attribute 'default nil :font "Anonymous Pro 12"))

;;(defun cyberpunk ()
;;  (interactive)
;;  (color-theme-cyberpunk)
;;  (set-face-background 'hl-line "#333333")
;;  (set-face-attribute 'default nil :font "Anonymous Pro 12"))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(live-add-packs '(~/GITHUB/cassiel/nemacs/packs/mobileorg
                  ~/GITHUB/cassiel/nemacs/packs/org-mode-extras
                  ~/GITHUB/cassiel/nemacs/packs/miscellany
                  ~/GITHUB/cassiel/nemacs/packs/ibuffer
                  ~/GITHUB/cassiel/nemacs/packs/git-annex
                  ~/GITHUB/cassiel/nemacs/packs/modes
                  ~/GITHUB/cassiel/nemacs/packs/buffer-move
                  ;; ~/GITHUB/cassiel/nemacs/packs/insert-unicode
                  ~/GITHUB/cassiel/nemacs/packs/scss-mode
                  ~/GITHUB/cassiel/nemacs/packs/projectile))

;; emacsformacosx:
(setq mac-option-modifier nil)
(setq mac-command-modifier 'meta)
