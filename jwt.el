;;; jwt.el --- JWT Utilities

;; Copyright (C) 2018 Free Software Foundation, Inc.

;; Author: Jason Walsh <j@wal.sh>
;; Version: 0.1
;; Package-Requires: ((emacs "24.1") (cl-lib "0.5") (json "1.4") (dash "2.10.0") (s "1.11.0")  (ht "2.2"))
;; Keywords: jwt, security
;; URL: http://wal.sh/jwt

;;; Commentary:

;;; Code:

(require 'request)

(defgroup jwt nil
  "Tools for working with JWT tokens."
  :group 'tools)

(setq jwt-algorithms '((:ecdsa "ECDSA")
                       (:hmac "HMAC")
                       (:none "None")
                       (:rsa "RSA")))

(ert-deftest test-jwt-algorithm-defaut ()
          (should (= (alist-get :hmac jwt-algorithms) "HMAC")))

(defun jwt-encode (payload secret algorithm))

(defun jwt-decode (token))

(defvar jwt-run-tests nil)

(eval-when-compile
  (setq jwt-run-tests t))


(when jwt-run-tests
   (ert-deftest addition-test ()
       (should (= (+ 1 2) 4))))

;;; jwt.el ends here
