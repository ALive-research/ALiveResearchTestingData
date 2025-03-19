(use-modules (guix build-system python)
             (guix build-system qt)
             (guix build-system pyproject)
             (guix download)
             (guix gexp)
             (guix licenses)
             (guix packages)
             (gnu packages check)
             (gnu packages python)
             (gnu packages python-check)
             (gnu packages python-xyz)
             (gnu packages python-web)
             (gnu packages python-build)
             (gnu packages time)
             (gnu packages))

(define-public python-github3-py
  (package
    (name "python-github3-py")
    (version "4.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "github3.py" version))
       (sha256
        (base32 "0dnxbps444wvygani2adnljcnkwa6gpsmyf7xn4w7vskcw3p3m9h"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-pyjwt python-pyjwt python-dateutil
                             python-requests python-uritemplate))
    (native-inputs (list python-betamax
                         python-betamax-matchers
                         python-betamax-matchers
                         python-build
                         python-github3-py
                         python-hatchling
                         python-pytest
                         python-pytest-xdist
                         python-tox
                         python-twine
                         python-wheel))
    (home-page #f)
    (synopsis
     "Python wrapper for the GitHub API(http://developer.github.com/v3)")
    (description
     "Python wrapper for the @code{GitHub} API(http://developer.github.com/v3).")
    (license #f)))

(define-public python-github-release
  (package
    (name "python-github-release")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "github_release" version))
       (sha256
        (base32 "0hjh2z91v26nvwxr3wl5nvvlzz6sdghcy1bzj91b4dv77jyli08n"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-github3-py))
    (native-inputs (list python-setuptools python-wheel))
    (home-page "http://dev.hubspot.com/")
    (synopsis "Release to GitHub")
    (description "Release to @code{GitHub}.")
    (license expat)))

(define-public python-ghrelease
  (package
   (name "ghrelease")
   (version "0.1.2")
   (source
    (origin
     (method url-fetch)
      (uri "https://github.com/seletz/ghrelease/archive/refs/heads/ghrelease-0-1-2.tar.gz")
      (sha256
       (base32 "12j95xm28dg4vav0d6kgv2bp54hipz0jzwc3jfjhi5kdkbarkdwv"))))
    (build-system python-build-system)
    (arguments
     `(#:use-setuptools? #f))
    (inputs (list python
                  python-github-release
                  python-github3-py))
    (home-page "")
    (synopsis "")
    (description "")
    (license #f)))

python-ghrelease
