# django-polls

This repo shows an example of using volumes to speed up Python development in
Docker.

Check out the [full
post](https://kelda.io/blog/develop-python-docker-applications-faster) for
information on how the repo works, or just try it out!

## Running on Blimp

This example was originally created as an application for testing
[Blimp](https://kelda.io/blimp). Blimp is a development environment that runs
in the cloud, but has the exact same workflow and config as Docker Compose.

This repo works with `docker-compose up` as well without any modifications.

### Step 1: Clone the repo

```shell
git clone https://github.com/kelda/django-polls
cd django-polls
```

### Step 2: Install Blimp

```shell
curl -fsSL 'https://kelda.io/get-blimp.sh' | sh
```

Or, via Homebrew:

```shell
brew install kelda/tools/blimp
```

### Step 3: Login

```shell
blimp login
```

### Step 4: Boot the docker-compose.yml

```shell
blimp up
```

This boots the `docker-compose.yml`, and sets up the declared volumes and tunnels.

If you're using Docker Compose, run `docker-compose up` instead.

### Step 5: Test the code change

1. Open `localhost:8000`, and vote a couple times. Note that each vote counts twice.
1. Edit `polls/views.py` and fix the bug on line 51 by changing it to `selected_choice.votes += 1`.
1. Refresh `localhost:8000` and note how you can now see the votes for each option.

# Resources

* [Let us know what you thought](https://forms.gle/ffcD6knDaqRTkyLs5) to help us
continue improving the development experience for Docker.
* Check out the full [blog
  post](https://kelda.io/blog/develop-python-docker-applications-faster) on
  speeding up python development with volumes.
* The app is adapted from https://docs.djangoproject.com/en/3.0/intro/tutorial01/
