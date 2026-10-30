(use-modules (haunt asset)
             (haunt page)
             (haunt builder blog)
             (haunt builder atom)
             (haunt builder assets)
	     (haunt builder flat-pages)
             (haunt builder redirects)
             (haunt builder rss)
	     (haunt reader)
             (haunt reader skribe)
             (haunt reader texinfo)
             (haunt reader commonmark)
             (haunt site))

(define post-prefix "/haunt-site")

(site #:title "Built with Haunt, a Scheme Static Site generator"
      #:domain "bkmgit.github.io"
      #:build-directory "docs"
      #:default-metadata
      '((author . "A.N. Other")
        (email  . "ano@contact.me"))
      #:readers (list commonmark-reader texinfo-reader skribe-reader sxml-reader html-reader)
      #:builders (list (blog #:post-prefix post-prefix)
                       (atom-feed #:blog-prefix post-prefix)
                       (atom-feeds-by-tag #:blog-prefix post-prefix)
                       (rss-feed #:blog-prefix post-prefix)
                       (static-directory "images")))
