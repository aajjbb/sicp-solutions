;; ex 1.17

(define (even? n)
  (= (remainder n 2) 0))

(define (mult a b)
  (if (= b 0)
      0
      (+ a (mult a (- b 1)))))

(define (double a)
  (mult a 2))

(define (halve a)
  (/ a 2))

(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-mult (double a) (halve b)))
	(else (+ a (fast-mult a (- b 1))))))

(= (fast-mult 1 1) 1)
(= (fast-mult 0 1) 0)
(= (fast-mult 1 0) 0)
(= (fast-mult 4 4) 16)
(= (fast-mult 5 5) 25)
(= (fast-mult 9 9) 81)
(= (fast-mult 10 10) 100)
