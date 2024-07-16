;; recursion.el
(defun factorial (n)
  (if (<= n 1)
      1
    (* n (factorial (1- n)))))

(let ((input (read-string "Enter an integer: "))
      (param))
  (setq param (string-to-number input))
  (if (and (= param 0) (not (string= input "0")))
      (message "Invalid input")
    (message "Factorial: %d" (factorial param))))
