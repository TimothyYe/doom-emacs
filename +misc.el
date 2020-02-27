;;; +misc.el -*- lexical-binding: t; -*

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Timothy Ye"
      user-mail-address "yexiaozhou2003@gmail.com")

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org/")

(after! lsp-mode
  (setq lsp-enable-snippet t
        lsp-idle-delay 0.2)
  (lsp-register-custom-settings
    '(("gopls.completeUnimported" t t)
    ("gopls.staticcheck" t t))))

(after! projectile
  (setq projectile-project-search-path '("~/GitRepos/" "~/workspace/src")))

;; elfeed settings
(setq rmh-elfeed-org-files (list "~/Dropbox/org/elfeed.org"))
(use-package! elfeed
  :config
  (when (featurep! :editor evil +everywhere)
    (evil-define-key 'normal elfeed-search-mode-map
      "u" #'elfeed-update
      )))
