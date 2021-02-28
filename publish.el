(require 'ox)

(setf user-full-name "Maciej Grela")
(setf user-mail-address "enki@fsck.pl")

(setq org-publish-project-alist
      '(
        ("magical-index" :components ("magical-index-pages" "magical-index-static" "magical-index-archive"))
        ("magical-index-pages"
         :base-directory "."
         :base-extension "org"
         :publishing-directory "~/.cache/org-publish/magical-index"
         :recursive t
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :sitemap-title "A Certain Magical Index"
         :with-author t
         :with-date nil
         :with-creator nil
         :language "en"
         :html-metadata-timestamp-format "%Y-%m-%d %H:%M"
         )

        ("magical-index-static"
         :base-directory "."
         :base-extension "css\\|js\\|svg\\|pdf\\|bin\\|rpm\\|deb\\|png\\|webp\\|jpg\\|jpeg\\|gif\\|apk\\|tar.xz\\|tar.bz2\\|tar.gz\\|zip\\|txt\\|py\\|sh\\|config"
         :publishing-directory "~/.cache/org-publish/magical-index"
         :recursive t
         :with-author t
         :with-date nil
         :with-creator nil
         :language "en"
         :publishing-function org-publish-attachment
         )

        ("magical-index-archive"
         :base-directory "."
         :base-extension 'any
         :publishing-directory "~/.cache/org-publish/magical-index/projects/archive"
         :recursive t
         :with-author t
         :with-date nil
         :with-creator nil
         :language "en"
         :publishing-function org-publish-attachment
         )
	)
)
