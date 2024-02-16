;;; elpaca-use-package-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "elpaca-use-package" "elpaca-use-package.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from elpaca-use-package.el

(defvar elpaca-use-package-mode nil "\
Non-nil if Elpaca-Use-Package mode is enabled.
See the `elpaca-use-package-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `elpaca-use-package-mode'.")

(custom-autoload 'elpaca-use-package-mode "elpaca-use-package" nil)

(autoload 'elpaca-use-package-mode "elpaca-use-package" "\
Minor mode to enable :elpaca support for `use-package'.

If called interactively, enable Elpaca-Use-Package mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elpaca-use-package" '("elpaca-use-package-" "use-package-")))

;;;***

(provide 'elpaca-use-package-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elpaca-use-package-autoloads.el ends here
