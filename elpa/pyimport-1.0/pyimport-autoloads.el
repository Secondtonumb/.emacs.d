;;; pyimport-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pyimport" "pyimport.el" (0 0 0 0))
;;; Generated autoloads from pyimport.el

(autoload 'pyimport-insert-missing "pyimport" "\
Try to insert an import for the symbol at point.
Dumb: just scans open Python buffers.

\(fn)" t nil)

(autoload 'pyimport-remove-unused "pyimport" "\
Remove unused imports in the current Python buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pyimport" '("pyimport-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pyimport-autoloads.el ends here
