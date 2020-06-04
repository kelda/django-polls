# django-polls

App is from https://docs.djangoproject.com/en/3.0/intro/tutorial01/

1. `docker-compose up`
1. Open `localhost:8000`, and vote.
1. Go back to `localhost:8080` and note that the poll results don't show the vote split.
1. Edit `./polls/templates/polls/index.html` to comment out lines 13 through 19.
1. Refresh `localhost:8000` and note how you can now see the votes for each option.
