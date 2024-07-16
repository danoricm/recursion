#lang racket

(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

(display "Enter an integer: ")
(flush-output)
(define input (read-line))
(define param (string->number input))
(if (and (= param 0) (not (string=? input "0")))
    (display "Invalid input\n")
    (display (factorial param)))
