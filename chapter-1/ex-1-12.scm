;;; Create a procedure to return the number in the
;;; position (n, k) in the pascal triangle
;;; 1
;;; 1 1
;;; 1 2 1

(define (pascal n k)
  (cond ((or (< n 1) (< k 1) (> k n)) 0)
        ((or (= n 1) (= k 1)) 1)
        (else (+ (pascal (- n 1) k) (pascal (- n 1) (- k 1))))
        )
  )

(pascal 1 1)
(pascal 5 2)
(pascal 5 3)
(pascal 5 4)
(pascal 5 5)
