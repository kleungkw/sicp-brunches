#lang racket
(require "../utils.scm")
(require "../meta.scm")
(require "exercise-2.7.scm")
(require "exercise-2.8.scm")
(require "exercise-2.9.scm")

(define (div-interval A B)
	(cond ((< (lower-bound B) 0 (upper-bound B)) (raise "IntervalException: Cannot divide by interval over 0.")))
	(mul-interval A 
		(make-interval 
			(/ 1.0 (upper-bound B))
			(/ 1.0 (lower-bound B)))))


(display "Expect Exception when dividing by interval spanning 0:\n")
	(div-interval 
		(make-interval 3 5)
		(make-interval -1 1))