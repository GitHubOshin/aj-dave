#lang racket
(define li '(1 2 3 4 5))

(cdr li)
(car li)

(define (sum li)
  (if (empty? li)
      ;then
      0
      ;else
      (+
       ;first element of list
       (car li)
       ;sum rest of list
       (sum (cdr li)))))

; 1 + (sum'(2 3 4 5))
; 1 + 2 + (sum '(3 4 5))
; 1 + 2 + (sum '(3 4 5))
; 1 + 2 + 3 + (sum '( 4 5))
; 1 + 2 + 3 + 4 + (sum '( 5))
; 1 + 2 + 3 + 4 + 5 + (sum '( )) 



"Hello"

1
2.3

#t
#f
'(1 "love" #t)

'(1 2 3 4 5)

(define a 110)
a

(define b 1)

(+ 2 b)

(define (abc arg)
  (+ 1 arg))

(abc 1)

(define xyz
  (lambda (arg)
    (+ 3 arg)))
(xyz 1)

(map (lambda
         (item)
       (+ item 1))
      '(1 2 3 4 5))

(define yes "yes this is true")
(define no "no this is false")

(if (= 1 1)
    ;then
    yes
    ;else
    no)

(if (positive? -1)
    ;then
    yes
    ;else
    no)



