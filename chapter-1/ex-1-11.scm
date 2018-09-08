;;; Given:
;;; f(n) = n if n < 3
;;;        f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3
;;; Write a procedure that calculates f(n) as a recursive
;;; process. Do the same but with a iterative process.

(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3))))))
  )

(define (f-iter n)
  ;;; d = f(n)
  ;;; c = f(n - 1)
  ;;; b = f(n - 2)
  ;;; a = f(n - 3)

  (define (f-iter-helper a b c d counter)
    (cond ((= counter 0) a)
          ((= counter 1) b)
          ((= counter 2) c)
          (else (f-iter-helper b
                               c
                               d
                               (+ d (* 2 c) (* 3 b))
                               (- counter 1)
                               )
                ))
    )
  (f-iter-helper 0 1 2 4 n)
  )

(f-rec 3)
(f-iter 3)
(f-rec 5)
(f-iter 5)
(f-rec 7)
(f-iter 7)
(f-rec 15)
(f-iter 15)
