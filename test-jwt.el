;; (require 'jwt.el)
(require 'json)
(require 's)

;; Payload and Header

(let ((user "jwalsh"))
  (json-read-from-string "[true, 4.5]"))

(setq one-day (seconds-to-time (* 60 60 24)))

(setq payload '((iss . "https://wal.sh")
                (sub . "john-doe@example.com")
                (exp (floor (+ (float-time) (* 60 60 24))))
                (nbf (floor (float-time)))
                (iat (floor (float-time)))
                (name . "John Doe")))

(floor (time-to-seconds (time-add (float-time) (days-to-time 1))))


(setq header '((alg "none")
               (typ "")
               (cty "application/jtw")))

(setq payload-encoded (json-encode payload))

(json-encode '(:a 1 :b 2 :c (:d 4 :e 5)))

(setq simple-object '(:a 1))

(json-encode simple-object)

(json-read-from-string payload-encoded)

(json-read-from-string "{\"sub\":\"1234567890\",\"name\":\"John Doe\",\"iat\":1516239022}")

(ert-deftest encode-decode-test ()
  (should (= (json-read-from-string (json-encode simple-object)) simple-object)))


;; Token

(setq token (split-string "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c" "\\."))

(s-split "header.payload.signature" "\\.")

(base64-encode-string "John Doe")
