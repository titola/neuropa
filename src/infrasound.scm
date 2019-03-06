;;; Infrasound propagation through two differentiators.
;;; Tests for the sound editor Snd.
;;;
;;; The functions reverse-differentiator-1, reverse-differentiator-2,
;;; differentiator-1 and differentiator-2 work with the recorded
;;; and published sound file "low_freq_with_6min_for_tinnitus.wav".

(define (reverse-differentiator k mult)
  (let ((sum 0))
    (map-channel
      (lambda (x)
        (* mult (set! sum (+ sum x k)))))))

(define (reverse-differentiator-1)
  (let ((k -0.05))
    (reverse-differentiator k (/ k -164.11))))

(define (reverse-differentiator-2)
  (let ((k (/ 80.5)))
    (reverse-differentiator k (/ k 10.35))))

(define (differentiator k mult)
  (let ((x0 0))
    (map-channel
      (lambda (x)
        (let* ((x (* x mult))
               (y (- x x0 k)))
          (set! x0 x)
          y)))))

(define (differentiator-1)
  (let ((k -0.05))
    (differentiator k (/ -164.11 k))))

(define (differentiator-2)
  (let ((k (/ 80.5)))
    (differentiator k (/ 10.35 k))))

;; (open-sound "low_freq_with_6min_for_tinnitus.wav")
;; (reverse-differentiator-2)
;; (reverse-differentiator-1)   ; => Initial filtered pulses.
;; (differentiator-1)
;; (differentiator-2)
