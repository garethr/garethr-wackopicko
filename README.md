
[![Build Status](https://secure.travis-ci.org/garethr/garethr-wackopicko.png)](http://travis-ci.org/garethr/garethr-wackopicko)

[WackoPicko](https://github.com/adamdoupe/WackoPicko) is a vulnerable
web application used to test web application vulnerability scanners.

This project contains a Puppet module to install it. All you have to do
is:

    include wackopicko

Note that you'll need all the module dependencies. For that you can
either use a tool like librarian-puppet or alternative run

    puppet module install garethr/wackopicko
