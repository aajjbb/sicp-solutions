;; a.  How many times is the procedure p applied
;; when (sine 12.15) is evaluated?

;; 12.5/3^x = 0.1
;; x ~= 4.39
;; p is called about 5 times.

;; b.  What is the order of growth in space and number
;; of steps (as a function of a) used by the process
;; generated by the sine procedure when (sine a) is evaluated?

;; Time
;;
;; T(n) = T(n/3) + O(1)
;; n/3^k >= 0.1
;; n >= 3^k * 0.1
;; log(n) >= k * log(0.1)
;; T(n) ~= O(log(n))

;; Space
;;
;; T(n) = O(log(n))

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.5)