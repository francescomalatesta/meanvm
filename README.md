# MEANVM 0.1.0

> _Oh my god, such a fucking original name!_ - The Universe

## Introudction

Hi there, this is my basic setup for a M.E.A.N. VM for Vagrant. I made this because I had many issues with the existing solutions. I don't know if it's going to be good for you, but feel free to try.

The Vagrant file will automatically install:

* NodeJS;
* MongoDB;
* NPM;
* Bower;
* Grunt;
* Gulp;
* N;
* Yeoman;

Obviously, any feedback and help is welcome :)

## Usage

You can clone the repository in the desired folder, then all you have to do is

    vagrant up

and finally

    vagrant ssh

to access the machine.

### Note!

In order to fix some NODE_PATH problems with Yeoman, I added this instruction in the _user.sh_ provision file:

    # fixing NODE_PATH to avoid issues with Yo
    echo "export NODE_PATH=$NODE_PATH:~/npm-global/lib/node_modules" >> ~/.bashrc && source ~/.bashrc

If you're still getting a similar error, execute the instruction again, in your shell.

## ToDo

* find a way to avoid problems with meanjs and mean.io installers (mainly, the tar tar.unpack untar issue);
* add a YAML configuration file (because lazy is better);
