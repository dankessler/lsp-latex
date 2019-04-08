;;; lsp-latex-test.el --- test for lsp-latex.        -*- lexical-binding: t; -*-

;; Copyright (C) 2019  ROCKTAKEY

;; Author: ROCKTAKEY <rocktakey@gmail.com>
;; Keywords:

;; Version: 0.0.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'lsp-mode)
(require 'lsp-latex)
(require 'noflet)

(ert-deftest lsp-latex-open ()
  "Test for lsp-latex."
  (noflet ((lsp--select-action (arg) (car arg)))
   (add-to-list 'exec-path "~/")
  (find-file "/sample-for-latex/test.tex")
  (lsp)))

(provide 'lsp-latex-test)
;;; lsp-latex-test.el ends here
