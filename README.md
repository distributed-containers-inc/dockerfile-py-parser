# What is it

dockerfile-py-parser is a wrapper around Docker's official "Dockerfile" parser, it allows you to parse Dockerfiles
in the same way as the docker daemon and client, using https://github.com/moby/buildkit/frontend/dockerfile/parser

The results are a simple AST in the same representation as internally used by docker, consisting only of Nodes,
see `class Node` in `dockerfileparser/__init__.py`

# Building from source

Building is only officially supported on linux amd64. To build from source:

1. `./setup.sh`
2. `pip install -e ./`

You will need a valid go installation, with the "GOPATH" environment variable set.

## Other platforms
Edit the loop in `setup.sh` to your preferred platform, and ensure support in `__init__.py`'s `system_platform` and
`system_architecture` fields.