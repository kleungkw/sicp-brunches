#lang racket

(define phi
  (/ (+ 1 (sqrt 5)) 2))

(define psi
  (/ (- 1 (sqrt 5)) 2))

(define (^ base exp)
  (define (*^ exponent acc)
    (if (= exponent 0)
        acc
        (*^ (- exponent 1) (* base acc))))
  (*^ exp 1))

(define (f n)
  (/ (^ phi n) (sqrt 5)))

; Fib(n) = (phi^n - psi^n)/sqrt(5)

; fib sequence
; 0 1 1 2 3 5 8 13 21

; phi^2 = phi + 1

; proof by induction

;; base case
; Fib(0) = 0
; (phi^0 - psi^0)/sqrt(5) = (1 - 1)/sqrt(5) = 0

; Fib(1) = 1
; (phi^1 - psi^1)/sqrt(5)r
; = ((1 + sqrt(5))/2 - (1 - sqrt(5))/2)/sqrt(5)
; = ((2 * sqrt(5))/2)/sqrt(5)
; = 1

; Fib(2) = Fib(1) + Fib(0) = 1 + 0 = 1
; (phi^2 - psi^2)/sqrt(5)
; = (phi + 1 - psi - 1)/sqrt(5)
; = ((1 + sqrt(5))/2 + 1) - ((1 - sqrt(5))/2 + 1)/sqrt(5)
; = ((2 * sqrt(5))/2)/sqrt(5)
; = 1

;; inductive case
; Fib(n+1) = Fib(n) + Fib(n-1)
;          = (phi^n - psi^n)/sqrt(5) + (phi^(n-1) - psi^(n-1))/sqrt(5)
;          = (phi^n - psi^n + phi^(n-1) - psi^(n-1))/sqrt(5)
;          = ((phi^n + phi^(n-1)) - (psi^n + psi(n-1)))/sqrt(5)
;          = phi^(n+1) * (phi^-1 + phi^-2) - psi^(n+1) * (psi^-1 + psi^-2)/sqrt(5)

;;http://www.kendyck.com/math/sicp/ex1-13.xml