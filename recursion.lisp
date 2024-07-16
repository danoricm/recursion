;; recursion.lisp
(defun factorial (n)
  (if (<= n 1)
      1
    (* n (factorial (1- n)))))

(let ((input (read-line))
      (param))
  (setq param (parse-integer input))
  (if (and (= param 0) (not (string= input "0")))
      (message "Invalid input")
    (message "Factorial: %d" (factorial param))))
