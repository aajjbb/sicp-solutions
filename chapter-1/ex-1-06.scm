;;; As Lisp interpreters uses the so-called applicative
;;; order evaluation, all the arguments of the procedure
;;; are evaluated beforehand. Having a recursive call to
;;; sqrt-iter as one of new-if arguments, a infinite loop
;;; arise.
