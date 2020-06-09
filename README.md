# django-polls

App is from https://docs.djangoproject.com/en/3.0/intro/tutorial01/

1. `docker-compose up`
1. Open `localhost:8000`, and vote a couple times. Note that each vote counts twice.
1. Edit `polls/views.py` and fix the bug by changing it to `selected_choice.votes += 1`.
1. Refresh `localhost:8000` and note how you can now see the votes for each option.
