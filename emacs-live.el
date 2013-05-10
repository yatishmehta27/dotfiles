(live-add-packs '(~/.live-packs/yatish-pack))
(live-add-packs '(~/.live-packs/yatish-pack))
(add-to-list 'load-path  "/usr/share/emacs/24.3.50/leim")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/vendor/rhtml/")
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode/")
;;(add-to-list 'load-path "~/.emacs.d/vendor/Enhanced-Ruby-Mode")
(add-to-list 'load-path "~/.emacs.d/vendor/haml-mode")
(add-to-list 'load-path "~/.emacs.d/vendor/org-mode-crate")
(setq enh-ruby-program "/usr/bin/ruby")
(setq org-directory "/home/yatish/org-files")
(add-to-list 'load-path "~/.emacs.d/vendor/twittering-mode")
(require 'org-mode-crate-init)
(require 'haml-mode)
(require 'ruby-mode)
(require 'coffee-mode)
(require 'hacker-news)
(require 'rhtml-mode )



(autoload 'svg-clock "svg-clock" "Start/stop svg-clock" t)

(add-to-list 'load-path "~/.emacs.d/")
(load "package")
(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Isolate\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'"   . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(set-default-font "monaco-11")
