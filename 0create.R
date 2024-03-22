file.edit('.gitignore')
file.edit('.Rbuildignore')
#file.edit('.github/workflows/_pkgdown.yml')
file.edit('_pkgdown.yml')
file.edit('NAMESPACE')
file.edit('DESCRIPTION')
file.edit('README.md')
file.edit('.github/workflows/pkgdown.yaml')
#----- customize template
file.edit('inst/pkgdown/BS3/templates/footer.html')
file.edit('inst/pkgdown/BS3/assets/preferably.css')
#-----
# Create favicons: run once when you have your man/figures/logo.png
pkgdown::build_favicons()
library(pkgdown)
library(roxygen2)
roxygenise(clean = TRUE)
build_home()
build_reference()
build_site()
preview_site()
deploy_to_branch()
#  usethis -----
library(usethis)
#Use GitHub actions to automatically build and publish the site
#usethis::use_github_actions()
deploy_to_branch()
use_pipe() # Use magrittr's pipe in your package
use_mit_license()       # need a LICENSE file
use_roxygen_md()        # use {roxygen2} for documentation and configuration
use_package_doc()       # setup a package-level manual page
use_testthat()          # setup testing infrastructure
use_test("placeholder") # setup a placeholder test file
devtools::document()             # Let {roxygen2} create NAMESPACE entries, build manual pages (and, more later on)
devtools::check()                # looking for the three "0's" that tell us we're ready to roll!
use_git()               # put the directory under git version control
git_vaccinate()         # Prevent leaking credentials and other unnecessary filesystem cruft


#  ----  buid pdf manual
library(roxygen2)
devtools::build_manual()
