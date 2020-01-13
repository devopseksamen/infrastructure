# Infrastructure

This is the infrastructure repository for the devops exam 2019.

Link to the application repository:

~~~~
https://github.com/thatra94/applikasjon
~~~~

To run on local terraform:

~~~~
export HEROKU_EMAIL="your@email.com"
export HEROKU_API_KEY="API KEY"
export AWS_ACCESS_KEY_ID="ACCESS KEY"
export AWS_SECRET_ACCESS_KEY="SECRET ACCESS KEY"
export STATUSCAKE_USERNAME="USERNAME"
export STATUSCAKE_APIKEY="STATUSCAKE KEY"
export OPSGENIE_API_KEY=OPSGENIE KEY"
~~~~
Then run: 

~~~~
terraform init
terraform apply
~~~~

To run with travis 
~~~~
travis encrypt HEROKU_EMAIL="your@email.com" --add env.global
travis encrypt HEROKU_API_KEY="API KEY" --add env.global
travis encrypt AWS_ACCESS_KEY_ID="ACCESS KEY" --add env.global
travis encrypt AWS_SECRET_ACCESS_KEY="SECRET ACCESS KEY" --add env.global
travis encrypt STATUSCAKE_USERNAME="USERNAME" --add env.global
travis encrypt STATUSCAKE_APIKEY="STATUSCAKE KEY" --add env.global
travis encrypt OPSGENIE_API_KEY=OPSGENIE KEY" --add env.global
~~~~
commit and push to your github repo that is linked to travis
If there is build error with build.sh

~~~~
git update-index --add --chmod=+x build.sh
git commit -m "Make build.sh executable"
git push 
~~~~

Pipeline should now  be created in your heroku dashboard.
Users, schedule and team are made in opsgenie
Apps are linked to statusscake for for monitoring of uptime
