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
      (:prefix "a"
        :desc "helm-spotify-plus" "s" #'helm-spotify-plus
        )
      (:prefix "a"
        :desc "helm-spotify-plus-next" "n" #'helm-spotify-plus-next
        )
      (:prefix "a"
        :desc "helm-spotify-plus-previous" "b" #'helm-spotify-plus-previous
        )
      (:prefix "a"
        :desc "helm-spotify-plus-next" "p" #'helm-spotify-plus-play
        )
      (:prefix "a"
        :desc "helm-spotify-plus-pause" "g" #'helm-spotify-plus-pause
        )
      )
