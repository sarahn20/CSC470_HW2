(define single-multiple
  (lambda (x lst)
    (if (null? lst)
        '()
        (cons (list x (car lst))(single-multiple x (cdr lst))))))
 
(define product
  (lambda (sos1 sos2)
    (if (null? sos1)
        '()
        (append (single-multiple (car sos1) sos2)(product (cdr sos1) sos2)))))

(product '(a b c) '(x y))
