;;; jwt.el --- JWT Utilities

;; Copyright (C) 2018 Free Software Foundation, Inc.

;; Author: Jason Walsh <j@wal.sh>
;; Version: 1.0
;; Package-Requires: ((json))
;; Keywords: jwt, security
;; URL: http://wal.sh/jwt

;;; Commentary:

;;; Code:

(require 'request)

(defgroup jwt nil
  "Tools for working with JWT tokens."
  :group 'tools)



(defun jwt-decode (jti-payload hmac-secret algorithm))

(defun jwt-encode (jti-payload hmac-secret algorithm))



;;; jwt.el ends here
