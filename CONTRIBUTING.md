# Contributing

This is a bespoke fork of the [Pandas Sphinx theme](https://github.com/pandas-dev/pandas-sphinx-theme) use for the various Spyder documentation sites.
All development ultimately takes place in the ``develop_spyder`` branch.
While the nominal eventual goal is to merge commonly useful changes downstream and make the rest configurable, the initial choices made after forking the theme will likely make that take an unfeasible amount of effort.
Nevertheless, any contributions toward that goal are much appreciated.

If you're not comfortable with at least the basics of ``git`` and GitHub, we recommend seeking out a beginner tutorial; if you are already are experienced with it, most of this guide will already be familiar to you.
However, the guide should fill you in on pretty much all the parts you need to know, so read on.
Thanks!



## Reporting Issues

Discover a bug?
Want a new feature?
[Open](https://github.com/spyder-ide/spyder-docs-sphinx-theme/issues/new/choose) an [issue](https://github.com/spyder-ide/spyder-docs-sphinx-theme/issues)!
Make sure to describe the bug or feature in detail, with reproducible examples and references if possible, what you are looking to have fixed/added.
While we can't promise we'll fix everything you might find, we'll certainly take it into consideration, and typically welcome pull requests to resolve accepted issues.
Thanks!



## Setting Up a Development Environment

**Note**: You may need to substitute ``python3`` for ``python`` in the commands below on some Linux distros where ``python`` isn't mapped to ``python3`` (yet).


### Fork and clone the repo

First, navigate to the [project repository](https://github.com/spyder-ide/spyder-docs-sphinx-theme) in your web browser and press the ``Fork`` button to make a personal copy of the repository on your own Github account.
Then, click the ``Clone or Download`` button on your repository, copy the link and run the following on the command line to clone the repo with submodules:

```bash
git clone --recursive <LINK-TO-YOUR-REPO>
```

Finally, set the upstream remote to the official website repo with:

```bash
git remote add upstream https://github.com/spyder-ide/spyder-docs-sphinx-theme.git
```


### Create and activate a fresh venv

Particularly for development installs, we highly recommend you create and activate a virtual environment to avoid any conflicts with other packages on your system or causing any other issues.
To do so with Conda (recommended), simply execute the following:

```bash
conda create -c conda-forge -n theme-env python=3
```

And activate it with

```bash
conda activate theme-env
```

With pip/venv, you can create a virtual environment with

```bash
python -m venv theme-env
```

And activate it with the following on Linux and macOS,

```bash
source theme-env/bin/activate
```

or on Windows (cmd),

```cmd
.\theme-env\Scripts\activate.bat
```

Regardless of the tool you use, make sure to remember to always activate your environment before using it.


### Install the development dependencies

To get the consistent pinned versions of the development dependencies, install the deps from the requirements file.
If using conda, run:

```bash
conda install -c conda-forge --file docs/requirements.txt
```

Or, using pip,

```bash
python -m pip -r docs/requirements.txt
```


### Installing the theme package itself

Finally, install the theme itself in editable mode, along with its ``npm`` dependencies (for rebuilding any CSS/JS files with Webpack; you'll need NodeJS/npm installed and accessable on your path):

```bash
pip install -e .
npm install
```



## Building and testing the theme

In the root of this repository, to run a continuously updating local webserver with the theme updated interactively, execute ``npm run build:dev`` to build a continually updating test site that will allow you to preview your changes as you make them.
Once you're satisfied, you can use ``npm run build:production`` to build the theme package for use on the actual docs repo, and finally build the docs as normal (e.g. ``make html``) in the same environment to observe the changes using the updated theme.



## Making Your Changes

To start working on a new PR, you need to execute these commands, filling in the branch names where appropriate (``<FEATURE-BRANCH>`` is the branch you'll be creating to store your changes, e.g. ``fix-startup-bug`` or ``add-widget-support``):

```bash
git checkout develop_spyder
git pull upstream develop_spyder
git checkout -b <FEATURE-BRANCH>
```

Once you've made and tested your changes, commit them with a descriptive message of 74 characters or less written in the imperative tense, with a capitalized first letter and no period at the end (our pre-commit hooks will check that for you, so make sure to install them).
For example:

```bash
git commit -am "Fix style issues on mobile browsers"
```

After making your changes, make sure to test them with ``npm run build:dev`` and/or ``npm run build:production`` followed by the docs build command (e.g. ``make html``).



## Pushing your Changes and Submitting a Pull Request

Now that your changes are ready to go, you'll need to push them to your fork.

```bash
git push -u origin <FEATURE-BRANCH>
```

Finally, create a pull request to the [spyder-ide/spyder-docs-sphinx-theme repository](https://github.com/spyder-ide/spyder-docs-sphinx-theme/) on Github.

Thanks, and we look forward to your generous contributions!
