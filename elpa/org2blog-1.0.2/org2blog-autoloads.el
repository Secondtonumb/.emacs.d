
;;;### (autoloads nil "ox-wp" "ox-wp.el" (0 0 0 0))
;;; Generated autoloads from ox-wp.el

(autoload 'org-wp-export-as-wordpress "ox-wp" "\
Export current buffer to a text buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

Export is done in a buffer named \"*Org WP Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP EXT-PLIST)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-wp" '("org-wp-")))

;;;***

;;;### (autoloads nil nil ("org2blog-pkg.el") (0 0 0 0))

;;;***

;;;### (autoloads nil "org2blog" "org2blog.el" (0 0 0 0))
;;; Generated autoloads from org2blog.el

(autoload 'org2blog/wp-mode "org2blog" "\
Toggle org2blog/wp mode.
With no argument, the mode is toggled on/off.
Non-nil argument turns mode on.
Nil argument turns mode off.

If called interactively, enable Org2blog/Wp mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

Commands:
\\{org2blog/wp-entry-mode-map}

Entry to this mode calls the value of `org2blog/wp-mode-hook'.

\(fn &optional ARG)" t nil)

(autoload 'org2blog/wp-org-mode-hook-fn "org2blog" "\
Enable `org2blog/wp-mode' when `#+ORG2BLOG:' is present.
   Add this to `org-mode-hook'.

\(fn)" nil nil)

(autoload 'org2blog/wp-login "org2blog" "\
Logs into the blog. Initializes the internal data structures.

\(fn &optional BLOG-NAME)" t nil)

(autoload 'org2blog/wp-new-entry "org2blog" "\
Creates a new buffer for a blog entry.

\(fn)" t nil)

(autoload 'org2blog/wp-post-buffer-and-publish "org2blog" "\
Post buffer and mark it as published

\(fn)" t nil)

(autoload 'org2blog/wp-post-buffer "org2blog" "\
Posts new blog entry to the blog or edits an existing entry.

\(fn &optional PUBLISH SUBTREE-P)" t nil)

(autoload 'org2blog/wp-post-subtree "org2blog" "\
Post the current entry as a draft. Publish if PUBLISH is non-nil.

\(fn &optional PUBLISH)" t nil)

(autoload 'org2blog/wp-post-subtree-as-page "org2blog" "\
Post the current entry as a draft. Publish if PUBLISH is non-nil.

\(fn &optional PUBLISH)" t nil)

(autoload 'org2blog/wp-post-subtree-and-publish "org2blog" "\
Post subtree and mark it as published

\(fn)" t nil)

(autoload 'org2blog/wp-post-subtree-as-page-and-publish "org2blog" "\
Publish the current subtree as a page.

\(fn)" t nil)

(autoload 'org2blog/wp-track-buffer "org2blog" "\
Save details of current buffer in the tracking file.

\(fn)" t nil)

(autoload 'org2blog/wp-track-subtree "org2blog" "\
Save details of current subtree in the tracking file.

\(fn)" t nil)

(autoload 'org2blog/wp-preview-buffer-post "org2blog" "\
Preview the present buffer in browser, if posted.

\(fn)" t nil)

(autoload 'org2blog/wp-preview-subtree-post "org2blog" "\
Preview the present subtree in browser, if posted.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org2blog" '("org2blog/wp-")))

;;;***

(provide 'org2blog-autoloads)

;; Local Variables:
;; no-byte-compile: t
;; coding: utf-8
;; End:
