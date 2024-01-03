#lang racket

(require 2htdp/image)

;colors
(define pale-purple (color 204 204 255))
(define pale-yellow (color 254 249 173))

;bear pieces
(define (bear-ear color)
  (underlay/offset (circle 20 "solid" color)
                   0 0
                  (circle 13 "solid" "white")))

(define (bear-ears ear-left ear-right)
  (underlay/offset (bear-ear ear-left)
                   60 0
                   (bear-ear ear-right)))


(define (small-nose nose-color)
  (rotate 180 (add-solid-curve
   (add-solid-curve
    (rectangle 0 0 "solid" "black")
    50 70 180 4/10
    50 80 0 1
   nose-color)
   50 70 0 4/10
   50 80 180 1
   nose-color)))

(define (bear-eyes left-eye-color right-eye-color)
  (underlay/offset (circle 5 "solid" left-eye-color)
                   30 0
                   (circle 5 "solid" right-eye-color)))

(define (bear-head head-color ear-left ear-right left-eye right-eye nose-color)
  (underlay/offset (bear-ears ear-left ear-right)
                   0 45
                   (underlay/offset (circle 50 "solid" head-color)
                   13 40
                   (bear-face left-eye right-eye nose-color))))

(define (bear-face left-eye right-eye nose-color)
  (underlay/offset (bear-eyes left-eye right-eye)
                   13.5 40
                   (underlay/offset (ellipse 45 35 "solid" "white")
                   25 30
                   (small-nose nose-color))))

(define (bear-arms left-arm right-arm)
 (underlay/offset (rotate 25 (ellipse 70 30 "solid" left-arm))
                  90 0
                 (rotate -25  (ellipse 70 30 "solid" right-arm))))
   
(define (bear-legs left-leg-color right-leg-color)
  (underlay/offset
   (circle 25 "solid" left-leg-color)
   70 0
   (circle 25 "solid" right-leg-color)))



(define (bear-body body-color)
  (overlay/offset
   (circle 35 "solid" "white")
   0 0
   (circle 50 "solid" body-color)))



(bear-ears "pink" "light blue")
(bear-face "black" "black" "purple")
(bear-eyes "black" "black")
(bear-head pale-purple "pink" "light blue" "black" "black" "purple")
(bear-body "pink")
(bear-legs "light blue"  "light blue")
(bear-arms pale-yellow pale-yellow)

;lovely bear

(define (lovely-bear)
  (overlay/offset
     (underlay/offset
        (overlay/offset
         ;request 6 arguments: head-color ear-left ear-right left-eye right-eye nose-color
                (bear-head pale-purple "pink" "light blue" "black" "black" "purple")
                0 60
                ;request 1 argument: body-color
                (bear-body "pink"))
                 0 63
                 ;request 2  arguments: left-leg-color right-leg-color
                 (bear-legs "light blue"  "light blue"))
                 0 10
                 ;request 2 arguments: left-arm right-arm colors
                 (bear-arms pale-yellow pale-yellow)))

(lovely-bear)

