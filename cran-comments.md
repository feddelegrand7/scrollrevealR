## Test environments
* local R installation, R 4.0.0
* ubuntu 16.04 (on travis-ci), R 4.0.0
* win-builder (devel)

-- R CMD check results -- scrollrevealR 0.2.0 ----
Duration: 18.3s


0 errors √ | 0 warnings √ | 0 notes √

* This is a resubmission

- I've used the htmlDependency() function from the htmltools package, now scrollrevealR works locally (the user doesn't need an internet connexion), it's also more robust as it relies on a local javascript file (see scrollreveal.min.js).

Best. 
