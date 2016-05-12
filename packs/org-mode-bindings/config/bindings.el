(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(define-key org-mode-map (kbd "<f12>") 'org-edit-special)
(define-key org-src-mode-map (kbd "<f12>") 'org-edit-src-exit)
(define-key org-mode-map (kbd "<M-f12>") 'org-babel-tangle)
