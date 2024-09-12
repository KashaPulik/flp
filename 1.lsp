;; Вариант 1

;; Номер 1
(print "Первое задание")
(print "(((1 (2 *)) 3) 4)")
(print (cadr(cadaar'(((1 (2 *)) 3) 4))))

;; Номер 2
;; (cons s-выражение список)
;; возвращает список, где s-выражение - голова, а список - хвост
(print "Второе задание")
(print "(cons s-выражение список)")
(print "возвращает список, где s-выражение - голова, а список - хвост")
(print "(cons nil nil) = ")
(print (cons nil nil))

;; Номер 3
;; Пункт а
(print "Третье задание")
(print "Пункт а")
(print (cons 1 (cons (cons 2 (cons 3 nil)) nil)))

;; Пункт б
(print "Пункт б")
(print (list 1(list 2 3)))

;; Номер 4
(print "Четвёртое задание")
(defun f(l)
    (append (last l) (cdr (butlast l)) (list (car l)))
)

(print (f '(1 2)))
(print (f '(1 2 3)))
(print (f '(1 2 3 4)))
