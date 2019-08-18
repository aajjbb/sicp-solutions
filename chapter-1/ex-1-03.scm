;;; Define a procedure that takes three numbers
;;; as arguments and returns the sum of the squares
;;; of the two larger numbers.

(define (>= x y)
  (not (< x y)))

(define (is_ord x y z)
  (and (>= x y) (>= x z) (>= y z)))

(define (f a b c)
  (cond ((or (is_ord a b c) (is_ord b a c)) (+ (square a) (square b)))
        ((or (is_ord a c b) (is_ord c a b)) (+ (square a) (square c)))
        ((or (is_ord b c a) (is_ord c b a)) (+ (square b) (square c))))
  )

(f 1 2 3)
(f 3 2 1)
(f 1 1 10)
(f -1 0 2)
