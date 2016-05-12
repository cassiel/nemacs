(setq org-log-into-drawer t)
(setq org-clock-into-drawer 1)

;; Clojure support:
(require 'ob-clojure)

;; Evaluate always (slightly dangerous):
(setq org-confirm-babel-evaluate nil)

;; Work-round: transient buffers for fontification:
(defun kill-org-src-buffers (&rest args)
  "Kill temporary buffers created by
  org-src-font-lock-fontify-block so they don't interfere with
  magit-mode."
  (dolist (b (buffer-list))
    (let ((bufname (buffer-name b)))
      (if (string-prefix-p " org-src-fontification:" bufname)
          (kill-buffer b)))))

(advice-add 'org-src-font-lock-fontify-block
            :after #'kill-org-src-buffers)

;; Table-of-contents (needs toc-org from MELPA):
(if (require 'toc-org nil t)
    (add-hook 'org-mode-hook 'toc-org-enable)
  (warn "toc-org not found"))
