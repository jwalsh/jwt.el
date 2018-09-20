;;; jwt.el --- JWT token utilities                   -*- lexical-binding: nil; -*-

;; Copyright (C) 2018  Jason Walsh

;; Author: Jason Walsh <j@wal.sh>
;; Keywords: tools

;; Filename: jwt.el
;; Description: Encode, decode, and parse JWT tokens.
;; Maintainer:
;; Created: Wed Sep 19 13:52:38 2018 (-0400)
;; Version: 0.1
;; Package-Requires: ()
;; URL: http://wal.sh/research/jwt
;; Doc URL: http://wal.sh/research/jwt
;; Keywords: tools
;; Package-Requires: ((cl-lib "0.5") (emacs "25"))
;; Dependencies: ((cl-lib "0.5") (emacs "25"))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(provide 'jwt)

(defgroup jwt nil
  "Tools for working with JWT tokens."
  :group 'tools)

(defconst jwt-algorithms-alist
  (list '((:ecdsa "ECDSA")
          (:hmac "HMAC")
          (:none "None")
          (:rsa "RSA"))))

(ert-deftest jwt-test-algorithm-defaut ()
  (should (= (alist-get :hmac jwt-algorithms-alist) "HMAC")))

(defun jwt-encode (payload secret algorithm)
  "Create a JWT Token for a PAYLOAD with a shared SECRET using ALGORITHM (defaults to HMAC)."
  (message "jwt-encode"))

(defun jwt-decode (token)
  "Decode the payload for a JWT TOKEN."
  (message "jwt-decode"))

(defvar jwt-run-tests nil)

(eval-when-compile
  (setq jwt-run-tests t))

(when jwt-run-tests
   (ert-deftest addition-test ()
       (should (= (+ 1 2) 4))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; jwt.el ends here
