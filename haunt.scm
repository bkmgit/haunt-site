(use-modules (haunt asset)
             (haunt page)
             (haunt builder blog)
             (haunt builder atom)
             (haunt builder assets)
	     (haunt builder flat-pages)
             (haunt builder rss)
	     (haunt reader)
             (haunt reader skribe)
             (haunt reader texinfo)
             (haunt reader commonmark)
             (haunt site))

(site #:title "Built with Haunt, a Scheme Static Site generator"
      #:domain "username.github.io"
      #:default-metadata
      '((author . "A.N. Other")
        (email  . "ano@contact.me"))
      #:readers (list commonmark-reader texinfo-reader skribe-reader sxml-reader html-reader)
      #:builders (list (blog)
                       (atom-feed)
                       (atom-feeds-by-tag)
                       (rss-feed)
                       (static-directory "images")))
