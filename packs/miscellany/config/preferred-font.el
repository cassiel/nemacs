;;(set-face-attribute 'default nil :font "Anonymous Pro 12")

(remove-if (lambda (x)
             (eq 'font (car x)))
           default-frame-alist)
(cond
 ((and (window-system) (eq system-type 'darwin))
  (add-to-list 'default-frame-alist '(font . "Input Mono 11")))
 ;; was: "Anonymous Pro 12"

 ((and (window-system) (eq system-type 'gnu/linux))
  (add-to-list 'default-frame-alist '(font . "Monospace 8"))))
