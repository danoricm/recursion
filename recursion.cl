;; recursion.cl
(defn factorial [n]
  (if (<= n 1)
    1
    (* n (factorial (- n 1)))))

(println "Enter an integer: ")
(let [input (read-line)
      param (Integer. input)]
  (println "Factorial: " (factorial param)))
