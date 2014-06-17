Homebrew recepies for ownCloud
------------------------------

The repository contains recepies for building the ownCloud
client.

To add this repo to homebrew, open a terminal and type

    brew tap kwillems/owncloud

To install libiniparser and libqtkeychain, run

    brew install iniparser
    brew install qtkeychain

To link neon do

    brew link --force neon

(--force is passed so Homebrew will allow this keg-only formula to be linked)