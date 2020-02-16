;;; lang/+go.el -*- lexical-binding: t; -*-
;; Go settings
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(after! go-mode
  (add-hook 'go-mode-hook 'lsp-deferred)
  (add-hook 'go-mode-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks))