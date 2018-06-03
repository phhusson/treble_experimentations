# How to build

* clone this repository
* call the build scripts from a separate directory

For example:

    git clone https://github.com/phhusson/treble_experimentations
    mkdir Lineage; cd Lineage
    bash ../treble_experimentations/build-rom.sh android-8.1 lineage

# Conventions for commit messages:

* `[UGLY]` Please make this patch disappear as soon as possible
* `[master]` tag means that the commit should be dropped in a future
  rebase
* `[device]` tag means this change is device-specific workaround
* `::device name::` will try to describe which devices are concerned
  by this change
* `[userfriendly]` This commit is NOT used for hardware support, but
  to make the rom more user friendly
