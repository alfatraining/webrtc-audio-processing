# About

This is meant to be packaging friendly copy of the AudioProcessing
module from the [ WebRTC ](https://webrtc.googlesource.com/src) project. The
ideal case is that we make no changes to the code to make tracking upstream
code easy.

This package currently only includes the AudioProcessing bits.

# Upgrading from upstream

The way we upgraded this repo to the same WebRTC code that chromium is using is:

- First visit the [chromium dash](https://chromiumdash.appspot.com/branches)
- Figure out which milestone to use (e.g. 130)
- Follow the WebRTC branch link (e.g. 6723)
- Click on the first commit of that branch (e.g. 28b793b)
- Grab the `tgz` tarball from that tree point
- Use a directory diff tool like [Meld](https://meldmerge.org/) or something else that is good enough
- Copy files from the tarball over to the repo:
  - files that have any changes that you are interested in.
  - try not to copy over new files unless they are necessary (e.g. build fails without them)

NOTE: Some files have some custom changes in order to avoid having to use a C++20 compiler and small build fixes.

# Building

This project is using `cmake` to build. To make life easy we have added a `Makefile`, you can simply:

`make`

to see all the possible targets.
