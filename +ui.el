;;; +ui.el -*- lexical-binding: t; -*

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
(setq fancy-splash-image "~/.doom.d/banner/hack.png")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Fira Code" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; set zone out time as 60 seconds
(setq zone-timer (run-with-idle-timer 60 t 'zone))

(after! ivy-posframe
; Set frame position
(setf (alist-get t ivy-posframe-display-functions-alist)
      #'ivy-posframe-display-at-frame-top-center))

(add-hook 'window-setup-hook #'toggle-frame-maximized)
