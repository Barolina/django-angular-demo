# django-angular-demo
Simple Project with Django and Angular2 working

First to start it's important to say that the best way to make Django and Angular2 work toghether is to serve the angular app as static resource in the web server and the django app with the wsgi engine.
In a UNIX environment a good solution would be use `nginx` as web server and `uWSGI` or `gunicorn` for the django part.

This example is a way to use the django embedded web server to play with both.

## Installation

### Django side

Not mandatory but I suggest to use `virtualenv`.
It's super-easy to do

```
$ cd <path>/django-angular-demo
$ virtualenv .virtualenv
New python executable in .virtualenv/bin/python2.7
Also creating executable in .virtualenv/bin/python
Installing setuptools, pip...done.
```

Now activate it

```
$ . .virtualenv/bin/activate
(.virtualenv) $
```

Once virtualenv is activate you should see a different ps1 showing the path where the virtualenv is installed. If you want to exit from virtualenv run

```
(.virtualenv) $ deactivate
$
```

With virtualenv active we can install all required python packages with `pip`

```
(.virtualenv) $ pip install --upgrade pip
(.virtualenv) $ pip install -r requirements.txt
``` 
the firts command upgrades pip to the latest version.

### Angular side

This demo uses `angular-cli` to generate the Angular components. I suggest to install it system wide.
First you need to install `Node.js` ( `npm` is installed with node).

Then you can install `angular-cli`

```
$ npm install -g angular-cli@latest
```

To verify if everything is ok run this command

```
$ ng version
angular-cli: 1.0.0-beta.17
node: 6.2.2
os: darwin x64
```

The last step is to install the node_modules required

```
$ cd <path>/django-angular-demo/my_project/web_app
$ nom install
```

Now the dev environment is ready, Let's play

## Deploy and start

Apply the first Django migrations

```
(.virtualenv) $ cd <path>/django-angular-demo/my_project
(.virtualenv) $ python manage.py migrate
```

Then build and deploy the web application with the command

```
(.virtualenv) $ sh build_and_deploy.sh
```

The script also collects all django static files (for instance the admin/ application)

Finally you can run

```
(.virtualenv) $ python manage.py runserver
Performing system checks...

System check identified no issues (0 silenced).
October 14, 2016 - 20:44:55
Django version 1.10.2, using settings 'my_project.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
```

Now point your browser to `http://127.0.0.1:8000/` and .... TADA!!!

![Imgur](http://i.imgur.com/M4KGGJu.png)