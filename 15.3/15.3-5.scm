(require-extension syntax-case array-lib check)
(require '../15.2/section)
(require '../15.3/section)
(import section-15.2)
(import section-15.3)
;;; p = {1, 2, 3, 4}
(let ((p '(1 2 3 4)))
  (let-values (((m s) (matrix-chain-order p))
               ((m/greedy s/greedy) (matrix-chain-order/greedy p)))
    (check (equal? (array->list s) (array->list s/greedy)) => #f)))