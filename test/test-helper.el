;;; test-helper.el --- pkg-info: Unit test helper    -*- lexical-binding: t; -*-

;; Copyright (C) 2013, 2014  Sebastian Wiesner

;; Author: Sebastian Wiesner <lunaryorn@gmail.com>
;; URL: https://github.com/lunaryorn/pkg-info.el

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Unit test helper for pkg-info

;;; Code:

(unless noninteractive
  (error "The test suite cannot be used interactively"))

(message "Running tests on Emacs %s" emacs-version)

(let* ((current-file (if load-in-progress load-file-name (buffer-file-name)))
       (source-directory (locate-dominating-file current-file "Cask")))

  (load (expand-file-name "pkg-info" source-directory))

  ;; Setup package.el for our tests
  (setq package-user-dir (expand-file-name "test/elpa" source-directory))
  (package-initialize)
  ;; Install our dummy package
  (unless (epl-package-installed-p 'pkg-info-dummy-package)
    ;; Only install the dummy package if needed
    (add-to-list 'package-archives
                 '("localhost" . "http://127.0.0.1:9191/packages/"))
    (package-refresh-contents)
    (package-install 'pkg-info-dummy-package)))

;; Local Variables:
;; indent-tabs-mode: nil
;; coding: utf-8
;; End:

;;; test-helper.el ends here
