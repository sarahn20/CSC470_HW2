(define list-index
  (lambda (pred lst)
    (cond
      ((null? lst) '())
      ((pred (car lst)) 0)
      ((number? (list-index pred (cdr lst))) (+ 1 (list-index pred (cdr lst)))) 
      (else #f))))
