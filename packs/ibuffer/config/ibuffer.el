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
