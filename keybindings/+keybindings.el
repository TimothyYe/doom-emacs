;;; keybindings/+keybindings.el -*- lexical-binding: t; -*-

;; Customized key bindings
(map! :leader
      (:prefix "w"
        :desc "evil-window-vsplit" "/" #'evil-window-vsplit
        )
      (:prefix "a"
        :desc "open elfeed" "f" #'elfeed
        )
      )
