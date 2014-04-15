# Learn Chef Cookbook

This cookbook is designed to help you get started with Chef. In order to
get started, there are a few dependencies you will need to install.

## Dependencies

### VirtualBox

VirtualBox is the virtualization layer we are using to run our virtual
machines. You can download an installer for your OS directly from [the
VirtualBox Website](https://www.virtualbox.org/wiki/Downloads).

### Vagrant

Vagrant is an abstraction layer on top of VirtualBox that allows us to
declaratively describe our virtual machines and bring them up with ease
from the command line. You can download an install for your OS directly
rom [the Vagrant Website](http://www.vagrantup.com/downloads.html).


### Ruby

Ruby is required to for this cookbook as well.


## Firing Everything Up

Once you've downloaded and installed VirtualBox and Vagrant, you can
start the virtual machine described in the Vagrantfile. To do so, run
`vagrant up` in your terminal. After a few minutes, you should have a
fully functioning Ubuntu 12.04 virtual machine running.


## Development Changes

If you make changes to the recipes in this cookbook, you can apply them
to your already running virtual machine by running `vagrant provision`
in your terminal.

## Running ChefSpec

In order to run the included ChefSpec, you will need to run `bundle
install` in your terminal. This installs all of the gem dependencies for
the cookbook. Then to run the spec, use `rspec spec`.

## Running ServerSpec

In order to run the included ServerSpec, first you need to start the
test kitchen virtual machines. You can use `kitchen converge` to get
them going, similar to `vagrant up`. Once the test kitchen virtual
machines are running, you can use `kitchen verify` to run the
ServerSpecs.

## Finishing Up

When you are all done and want to stop all of the virtual machines, you
will need to use a couple commands. To stop vagrant's virtual machine,
you can use `vagrant halt`. This saves the existing state of the machine
and turns it off. If you wish to completely remove the virtual machine,
you can use `vagrant destroy`. Destroying the test kitchen virtual
machines works in a similar manor, using `kitchen destroy`.
