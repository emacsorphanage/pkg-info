.. default-role:: code

master (in development)
-----------------------

- #5: Add support for ``X-Original-Version`` from MELPA_:

  - Add `pkg-info-library-original-version` to extract ``X-Original-Version``
    from a library
  - Add `pkg-info-defining-library-original-version` to extract the
    ``X-Original-Version`` from a library defining a symbol
  - Prefer ``X-Original-Version`` over the library version in
    `pkg-info-version-info`

.. _MELPA: http://melpa.milkbox.net/

0.4 (Nov 1, 2013)
-----------------

- Add `pkg-info-version-info` to provide comprehensive version information about
  libraries

0.3 (Oct 20, 2013)
------------------

- Use EPL_ for Emacs 23 compatibility

.. _EPL: https://github.com/cask/epl

0.2 (Oct 15, 2013)
------------------

- #1: Fix source lookup for libraries

0.1 (Aug 17, 2013)
------------------

Initial release
