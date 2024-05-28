
;; recursive algorithm
;; T_n is the number of steps needed to reach the goal
;; T_n-1 steps must be done, so that only the bottom plate is there
;; 1 step needed to move the biggest bottom plate
;; again T_n-1 steps needed to move the other plates
;; T_0 = 0
;; T_n = 2*T_n-1 + 1
;; without recursion
;; T_n = (2^n) - 1

(defun hanoi (n)
  (if (= n 0)
      0
      (+ (* 2 (hanoi (- n 1))) 1)))

(defun hanoi-without-recursion (n)
  (- (expt 2 n) 1))


(defun test ()
  (dotimes (n 10)
    (let ((a (hanoi n))
	  (b (hanoi-without-recursion n)))
      (format t "~a = ~a~%" a b))))

