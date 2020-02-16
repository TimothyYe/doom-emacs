;;; keybindings/+keybindings.el -*- lexical-binding: t; -*-

;; Customized key bindings
(map! :leader
      (:prefix "w"
        :desc "evil-window-vsplit" "/" #'evil-window-vsplit
        ))