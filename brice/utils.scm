#lang racket

(provide (all-defined-out))

(define (inc x) (+ x 1))
(define (dec x) (- x 1))
(define (square x) (* x x))


(define (reporterr msg)
	(display "ERROR: ")
	(display msg)
	(newline))

(define (reportok msg)
	(display "OK: ")
	(display msg)
	(newline))

(define (assert msg b)
  (if b (reportok msg) (reporterr msg)))

(define (asserteq msg a b)
	(let ((pass (> 0.0001 (abs ( - a b)))))
  		(assert msg pass)
  		(cond ((not pass)
  			(display (format "    Expected ~a got ~a\n" a b))))))

(define (average a b)
	(/ (+ a b) 2))

(define (repeat x n)
	
	(define (intern i seq)
		(if (> i 0)
			(intern (dec i) (cons x seq))
			seq))
	
	(intern n '()))

(define (gcd a b) 
	(if (= b 0)
		a
      	(gcd b (remainder a b))))

(define (sign n)
	(/ n (abs n)))