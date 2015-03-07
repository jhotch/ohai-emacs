;; install dart mode
(unless (package-installed-p 'dart-mode)
  (package-install 'dart-mode))
(require 'dart-mode)

;; install go mode
(unless (package-installed-p 'go-mode)
  (package-install 'go-mode))
(require 'go-mode)

;; install clojure mode extra syntax highlighting
(unless (package-installed-p 'clojure-mode-extra-font-locking)
  (package-install 'clojure-mode-extra-font-locking))
(require 'clojure-mode-extra-font-locking)

;; install CIDER package from stable MELPA repo
(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)
(unless (package-installed-p 'cider)
  (package-install 'cider))
(require 'cider)

;; install and activate rainbow-delimiters-mode
;; in most programming modes
(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
