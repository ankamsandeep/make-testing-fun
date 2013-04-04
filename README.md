Make Testing Fund with Test Reporters
===============

These are slides from my [RubyMidwest][http://rubymidwest.com] talk in 2013.

Installation / Use
==================

The easiest way to start with the starter git is to download a [tarball][tb] or
fork the [GitHub][gh] repository:

    $ git clone https://github.com/mattsears/make-testing-fun.git my-presentation

To run the examples, you will need Ruby installed, and to install the
required gems:

    $ cd make-test-fund
    $ bundle

From here, you can open "index.html" in your browser to view the
presentation. To make changes to the presentation using either Jade or Jade with
the Markdown enhancements. Run the "watch" script to automatically build all of
your changes into the final "index.html" file:

    $ npm run-script watch

Or, you can do manual one-off builds:

    $ npm run-script build

Licenses
========
All code not otherwise specified is Copyright 2012 Matt Sears.
Released under the MIT License.
