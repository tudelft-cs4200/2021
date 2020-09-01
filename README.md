# This website

This web site is built with Jekyll and is running on GitHub pages.



## Adding material

Material can be added by anyone in any section.

#### Adding yourself to People

To add yourself to the People page, add yourself to `_data/members.yml` and add a portrait photo to `img/portraits/`. Follow the conventions there.

### Adding master thesis topics

Add a post in `master-projects/_posts`

### Tips

* When there is a colon (`:`) in a text field at the top of the page, put the text between double quotes (`"`).<br />
  For example, this is not allowed:
    ```
    ---
    layout: post
    title: Spoofax: A Language Workbench
    ---
    ```
  It should be this (note the double quotes (`"`)):
    ```
    ---
    layout: post
    title: "Spoofax: A Language Workbench"
    ---
    ```
* Make a link to `https://example.com` with the text `my link` like this: `[my link](https://example.com)`<br/>
  It becomes: [my link](https://example.com)
* Make a link to `https://example.com` without any text like this: `<https://example.com>`<br />
  It becomes: <https://example.com>

---

## Building locally

There are two options to build the website locally:

* Installing and running Jekyll
* Running Jekyll from a Docker container

### Installing and running Jekyll

Jekyll requires Ruby (>=2.3). If you have Ruby installed (most recent Linuxes
and Macs do have a correct version of Ruby), you can use the following commands
to build the web site:

```shell
# Download data files, uses make and wget
make bib

# Install dependencies
gem install bundler
bundle install

# Build the web site
bundle exec jekyll build

# Run jekyll as web server.
# Automatically rebuilds after a file change
bundle exec jekyll serve
```

### Running with Docker

You can use Docker to avoid installing Ruby and/or gems. More instructions
[here](https://github.com/envygeeks/jekyll-docker/blob/master/README.md)

Caveat: the steps below probably do not invoke `make bib`.

```shell
export JEKYLL_VERSION=3.8.4

# Build the web site
docker run --rm --volume="$PWD:/srv/jekyll" \ -it jekyll/builder:$JEKYLL_VERSION jekyll build

# (Different terminal) Run a local webserver to see the site contents
cd _site
python -m SimpleHTTPServer 4000
```
