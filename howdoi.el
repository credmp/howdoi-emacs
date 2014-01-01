;;; howdoi.el --- Emacs implementation of the StackOverflow search tool howdoi

;; Copyright (C) 2014 Arjen Wiersma

;; Author: Arjen Wiersma <arjen@wiersma.org>
;; Maintainer: Arjen Wiersma <arjen@wiersma.org>
;; Created: 2014/01/01
;; Version: 0.0.1
;; Keywords: productivity
;; Homepage: https://github.com/credmp/howdoi-emacs

;; This file is not (yet) part of GNU Emacs.

;; worklog.el is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation,  Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; You will need the howdoi tool written by Benjamin Gleitzman, it is
;; available at https://github.com/gleitz/howdoi. This tool needs to
;; be available in your path.
;;

;;; History:

;; 01/01/2014 - written first function, oh my head hurts!
;;

;;; Todo:

;; * All the necessary things like variables, helpers, perhaps implement
;;   the entire thing in Emacs Lisp as an exercise instead of relying on
;;   the Ruby tool.

;;; Code:

(defgroup howdoi nil
  "Search stackoverflow for programming answers")

(defvar howdoi-version "0.0.1"
  "Howdoi version")

(defun howdoi (search)
  "Search stackoverflow with the help of the howdoi tool"
  (interactive "sSearch for: ")
  (let ((buf (get-buffer "*howdoi*"))
	(mode major-mode))

    (unless buf
      (setq buf (generate-new-buffer "*howdoi*")))

    (switch-to-buffer buf)
    (erase-buffer)

    (insert (shell-command-to-string (concat "howdoi " search)))
    (funcall mode)
    )
  )


  
