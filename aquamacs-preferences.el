;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

;; This file read by Aquamacs Emacs (but not by emacs-live under Emacs For Mac OS X).

;; From http://www.emacswiki.org/emacs/AquamacsEmacsCompatibilitySettings :

(aquamacs-autoface-mode -1)                                ; no mode-specific faces, everything in Monaco
(set-face-attribute 'mode-line nil :inherit 'unspecified) ; show modeline in Monaco
(set-face-attribute 'echo-area nil :family 'unspecified)  ; show echo area in Monaco

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; General:
(global-auto-revert-mode 1)
 
;; IDO:
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Org:
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(setq org-log-into-drawer t)
(setq org-clock-into-drawer 6)

;; Magit:
(global-set-key (kbd "C-x g") 'magit-status)

;; ibuffer
(require 'ibuffer) 
(setq ibuffer-saved-filter-groups
      (quote (;;("my-org" ("Org" (mode . org-mode)))
	      ("default"      
	       ("remote" (or (filename . "/Volumes/")))
	       ("org" (mode . org-mode))  
	       ("clojure" (mode . clojure-mode))
	       ("python" (mode . python-mode))
	       ("c" (or (mode . c-mode) (mode . c++-mode)))
	       ("coffee" (mode . coffee-mode))
	       ("elisp" (mode . emacs-lisp-mode))
	       ("notes" (or (mode . markdown-mode)
			    (mode . text-mode)))
	       ("dir" (mode . dired-mode))

	       ;;("MyProject1"
	       ;; (filename . "src/myproject1/"))
	       ;;("MyProject2"
	       ;; (filename . "src/myproject2/"))

	       ("ERC"   (mode . erc-mode))))))

(setq ibuffer-show-empty-filter-groups nil)


(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-auto-mode 1)
	    (ibuffer-switch-to-saved-filter-groups "default")))

(add-hook 'clojure-mode-hook
	  (lambda () (paredit-mode t)))

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Rainbow brackets everywhere:
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; With a pale theme (we're using "Clarity and Beauty"):
(set-background-color "black")
(set-face-background 'hl-line "#224")

(setq-default cursor-type 'box)
