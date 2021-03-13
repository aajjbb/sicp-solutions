(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(= 5 (gcd 5 10))
(= 1 (gcd 7 11))
(= 2 (gcd 206 40))

;;; Running the example (gcd 206 40) graphically, using applicative-order evaluation.
;;; = (gcd 206 40)
;;; = (gcd 40 (remainder 206 40))
;;; = (gcd 40 6)
;;; = (gcd 6 (remainder 40 6))
;;; = (gcd 6 4)
;;; = (gcd 4 (remainder 6 4))
;;; = (gcd 4 2)
;;; = (gcd 2 (remainder 4 2))
;;; = (gcd 2 0)
;;; = 2
