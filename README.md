# django-polls

App is from https://docs.djangoproject.com/en/3.0/intro/tutorial01/

1. `docker-compose up` or `blimp up`
1. Open `localhost:8000`, and vote a couple times. Note that each vote counts twice.
1. Edit `polls/views.py` and fix the bug by changing it to `selected_choice.votes += 1`.
1. Refresh `localhost:8000` and note how you can now see the votes for each option.

# Try a Python example on Blimp
This guide will walk you through installing Blimp and using it to run the django-polls `docker-compose.yml` file or your own `docker-compose.yml` file.

### Step 0: Get a docker-compose.yml

- Start with the Python example:
Use the django-polls `docker-compose.yml` in this repo

or

- Start with your own application:
Open the terminal and navigate to the directory containing your
`docker-compose.yml`.


### Step 1: Install Blimp

```shell
curl -fsSL 'https://kelda.io/get-blimp.sh' | sh
```

Or, we're also on Homebrew:

```shell
brew install kelda/tools/blimp
```

### Step 2: Login

```shell
blimp login
```

### Step 3: Boot your docker-compose.yml
```shell
blimp up
```

If you're running on Windows, check out the [Windows guide](kelda.io/blimp/docs/windows/#quickstart).


# Explore

In this section, we explore a few things you can do with Blimp now that you've
got your docker compose file running.  For more detailed documentation, see [usage](kelda.io/blimp/docs/usage).

### Check the status of your environment
```shell
$ blimp ps
SERVICE	STATUS
mongo    Running
web      Running
```

### Access ports over localhost
Just as you can with Docker Compose, Kelda Blimp allows you to use your browser to access services. For instance, if you are running the
[Django Polls](https://github.com/kelda-inc/node-todo) example you could view the Poll website using the following command.

```shell
$ curl http://localhost:8080
<html> ... </html>
```

### View logs
```shell
blimp logs web
```

### Get a shell
```shell
blimp ssh web
```

### Code with any editor.
Any bind [volumes](https://docs.docker.com/storage/bind-mounts/) that your
docker-compose file mounts will be automatically synchronized using
[Syncthing](https://syncthing.net/). Edit your code locally and changes automatically propagate into the containers.

# Let us know how it went

You're now up and running with Blimp!

[Answer a couple questions](https://forms.gle/ffcD6knDaqRTkyLs5) to help us
continue improving the development experience for Docker.
