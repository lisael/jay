# Jay

Project template for pony.

`jay` is a small shell tool that creates a minimal pony project with a sensible
`Makefile`. It includes tests and benchmarks out of the box.

It's only tested on GNU/Linux with GNUMake at the moment. Please test on your
environment fix the script, and send a PR.

## Install

Install jay

```
git clone https://github.com/lisael/jay.git
make help
make install prefix=$HOME
```

To install the tool globally in `/usr/local/bin`:

```sh
sudo make install
```

## Usage

### Pony program

Create your pony project:

```sh
mkdir /tmp/jay_program
cd /tmp/jay_program
jay myprog
```

This created a pony package stub a initialised a git repo.

So, what do I do, now ?

```sh
make help
```

```sh
make test
make bench
make run
make
make install prefix=$HOME
myprog
```

That all you have to do, and `myprog` is installed! Wait... it does nothing
useful, does it ? Sadly, `jay` does not code the features itself, at the
moment.

### Pony package

If your project is a package, add `-l` switch.

```sh
mkdir /tmp/jay_lib
cd /tmp/jay_lib
jay mylib
make help
# no install/uninstall target here
make test
make bench
make run
# this runs the program in example/main.pony
```

## TODO

It does the job as-is, but we may add some refinements:

- a temporary mode: create a project in `/tmp` and jump to an editor to test an idea
- switch off git
- jump to an editor in Main
- ...

## FAQ

1. What does `jay` mean ?
  - Nothing. I wrote this an evening listening to Jay Reatard.
  - 3 letters, left-hand/right-hand balanced on a qwerty keyboard, no known tool with the same name... Perfect name.
  - Did I told you about Jay Reatard ? I should have.

2. Can I help ?
  - Sure! Open an issue, a PR, get in touch with me (`lisael` on freenode) for any comment,
  suggestion or critics. I'm sure if you start using it you'll need features in
  `jay` or in the Makefile. Please share !
  - If you like this, spread the word.
  - Did you know that Jay plays with Lost Sounds ? 
