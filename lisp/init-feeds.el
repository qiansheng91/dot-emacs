(use-package elfeed
  :ensure t
  :config
  (setq elfeed-feeds
	'("http://nullprogram.com/feed/"
          "https://planet.emacslife.com/atom.xml"
	  "https://hnrss.org/newest"
	  "https://www.apmdigest.com/industry-news/feed")))

(provide 'init-feeds)
