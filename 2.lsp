;; Номер 1

(defun func1(x L)
    (cond 
        ((null L) nil)
        ((and (numberp (car L)) (>= (car L) 0)) (cons (list (car L) x) (func1 x (cdr L))))
        (t (cons (car L) (func1 x (cdr L))))
    )
)

(print "Первое задание")
(print "(-1 D 6 -3 A 0)")
(print (func1 '* '(-1 d 6 -3 a 0)))
(print (func1 1 '(-1 d 6 -3 a 0)))
(print (func1 'a '(-1 d 6 -3 a 0)))

;; Номер 11

(defun func11(L1 L2 &optional (x 1))
    (cond
        ((and (= (mod x 2) 1) (not (null L1))) (cons (car L1) (func11 (cdr L1) L2 (+ x 1))))
        ((and (= (mod x 2) 0) (not (null L2))) (cons (car L2) (func11 L1 (cdr L2) (+ x 1))))
        (t (append L1 L2))
    )
)

(print "Одиннадцатое задание")
(print "L1 = (1 2 3 4 5 6 7 8); L2 = (A S D F)")
(print (func11 '(1 2 3 4 5 6 7 8) '(a s d f)))

;; Номер 21

(defun func21(L &optional (start (car L)) (end (car (last (cdr L)))))
    (cond
        ((and (numberp start) (numberp end)) (cons (+ start end) (func21 (butlast (cdr L)))))
        ((numberp start) (list start))
    )
)

(print "Двадцать первое задание")
(print "L = (1 -2 -3 4 5 6 -7 8 9)")
(print (func21 '(1 -2 -3 4 5 6 -7 8 9)))