
install.packages('usethis')
install.packages('credentials')

## set your user name and email:
usethis::use_git_config(user.name = "apapendieck", user.email = "apapendieck@gmail.com")

## create a personal access token for authentication:
usethis::create_github_token() 
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)

## set personal access token:
credentials::set_github_pat("")

## or store it manually in '.Renviron':
usethis::edit_r_environ()
## store your personal access token with: GITHUB_PAT=xxxyyyzzz
## CORRECTION by ADAM: GITHUB_PAT = "YOURPAT"
## and make sure '.Renviron' ends with a newline