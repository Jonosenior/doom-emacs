;; -*- no-byte-compile: t; -*-
;;; core/packages.el

;; core.el
(package! auto-minor-mode :pin "17cfa1b54800fdef2975c0c0531dad34846a5065")
(package! gcmh :pin "b1bde5089169a74f62033d027e06e98cbeedd43f")

;; core-packages.el
(package! straight
  :type 'core
  :recipe `(:host github
            :repo "raxod502/straight.el"
            :branch ,straight-repository-branch
            :local-repo "straight.el"
            :files ("straight*.el")
            :no-build t)
  :pin "846956eacd10830dc4afde2028c3e1f6f2945d33")

;; core-modules.el
(package! use-package
  :type 'core
  :pin "d2640fec376a8458a669e7526e63e5870d875118")

;; core-ui.el
(package! all-the-icons :pin "d6cb6d4a779eaa3570d8e451fd4d38b2b4554860")
(package! hide-mode-line :pin "88888825b5b27b300683e662fa3be88d954b1cea")
(package! highlight-numbers :pin "8b4744c7f46c72b1d3d599d4fb75ef8183dee307")
(package! rainbow-delimiters :pin "5125f4e47604ad36c3eb4706310fcafac729ca8c")
(package! restart-emacs :pin "9aa90d3df9e08bc420e1c9845ee3ff568e911bd9")

;; core-editor.el
(package! better-jumper :pin "6d240032ca213ccb3347e25f26c29b6822bf03a7")
(package! dtrt-indent :pin "50c440c80e0d15303d8ab543bce4c56e9c2bf407")
(package! helpful :pin "c0662aa07266fe204f4e6d72ccaa6af089400556")
(when IS-MAC
  (package! ns-auto-titlebar :pin "1efc30d38509647b417f05587fd7003457719256"))
(package! pcre2el :pin "0b5b2a2c173aab3fd14aac6cf5e90ad3bf58fa7d")
(package! smartparens :pin "555626a43f9bb1985aa9a0eb675f2b88b29702c8")
(package! so-long
  :built-in 'prefer ; included in Emacs 27+
  ;; REVIEW so-long is slated to be published to ELPA eventually, but until then
  ;;        I've created my own mirror for it because git.savannah.gnu.org runs
  ;;        on a potato.
  :recipe (:host github :repo "hlissner/emacs-so-long")
  :pin "ed666b0716f60e8988c455804de24b55919e71ca")
(package! ws-butler
  ;; Use my fork of ws-butler, which has a few choice improvements and
  ;; optimizations (the original has been abandoned).
  :recipe (:host github :repo "hlissner/ws-butler")
  :pin "2bb49d3ee7d2cba133bc7e9cdac416cd1c5e4fe0")
(unless IS-WINDOWS
  (package! clipetty
    :recipe (:host github :repo "spudlyo/clipetty")
    :pin "01b39044b9b65fa4ea7d3166f8b1ffab6f740362"))

;; core-projects.el
(package! projectile :pin "5103cfc4248bc341d24c0c96f0728962c85bf8ed")

;; core-keybinds.el
(package! general :pin "a0b17d207badf462311b2eef7c065b884462cb7c")
(package! which-key :pin "8b49ae978cceca65967f3544c236f32964ddbed0")
