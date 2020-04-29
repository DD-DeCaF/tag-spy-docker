# Dockerized `tag-spy` Tool

[![master Build Status](https://travis-ci.org/DD-DeCaF/tag-spy-docker.svg?branch=master)](https://travis-ci.org/DD-DeCaF/tag-spy-docker)
[![Docker image pulls](https://img.shields.io/docker/pulls/dddecaf/tag-spy)](https://cloud.docker.com/repository/docker/dddecaf/tag-spy/)
[![License](https://img.shields.io/badge/license-Apache--2.0-blueviolet)](https://opensource.org/licenses/Apache-2.0)

A minimal [Docker image](Dockerfile) that provides a Python 3.7 environment with
[`tag-spy`](https://pypi.org/project/tag-spy/) installed in order to easily
retrieve Docker image tags.

## Usage

You can see the help for the command line tool with:

```
docker run --rm tag-spy --help
```

As an example, you can get the latest tag for `dddecaf/wsgi-base` via:

```
docker run --rm tag-spy dddecaf/wsgi-base alpine dk.dtu.biosustain.wsgi-base.alpine.build.timestamp
```

of course, you can pipe the output to a file with `... > <filename>`.

## Copyright

* Copyright © 2020, Novo Nordisk Foundation Center for Biosustainability,
    Technical University of Denmark.
* Free software licensed under the [Apache Software License 2.0](LICENSE).
