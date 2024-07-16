;; recursion.s
(define (factorial n)
  (if (<= n 1)
      1
    (* n (factorial (- n 1)))))

(display "Enter an integer: ")
(let ((input (read-line)))
  (let ((param (string->number input)))
    (if (or (not param) (= param 0))
        (begin
          (display "Invalid input")
          (newline))
        (begin
          (display "Factorial: ")
          (display (factorial param))
          (newline)))))
