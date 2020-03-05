;;; keybindings/+keybindings.el -*- lexical-binding: t; -*-

;; Customized key bindings
(map! :leader
      (:prefix "w"
        :desc "evil-window-vsplit" "/" #'evil-window-vsplit
        :desc "evil-window-split" "_" #'evil-window-split
        )
      (:prefix "a"
        :desc "open elfeed" "f" #'elfeed
        )
      )
