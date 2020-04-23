# SharedOrders

[![Build Status](https://travis-ci.com/romkey/SharedOrders.svg?branch=master)](https://travis-ci.com/romkey/SharedOrders)

This is a Rails app designed to help groups of people share orders from wholesale restaurant distributors.

It is currently under development and not yet suitable for use.

## Set up PostgreSQL

There are many tutorials on how to run PostgreSQL on your computer.

For reference, on my Mac I've installed PostgreSQL in Docker:
```
docker run -p 5432:5432 --name postgresql -d postgres:latest
```

When I need to start it, I run:
```
docker start postgresql
```

It needs users/roles to be setup in order to work properly.
```
createuser --interactive -U postgres -h 127.0.0.1 --pwprompt
```

this will prompt you for a role/user name and password.

You'll need to specify the host as `127.0.0.1` to any program that wants to talk to the Postgresql server; it won't be accessible via UNIX sockets.


## License

Written by [John Romkey](https://romkey.com) and licensed under the [MIT License](https://romkey.mit-license.org).

