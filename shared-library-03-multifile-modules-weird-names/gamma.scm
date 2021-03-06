;; gamma.scm --

(declare (uses beta)
	 (uses delta)
	 (emit-import-library gamma))

(module (gamma)
    (the-func)
  (import (scheme)
    (chicken pretty-print)
    (prefix (beta) beta::)
    (prefix (delta) delta::))

  (begin
    (import (chicken syntax))
    (import-for-syntax (chicken pretty-print))
    (begin-for-syntax
      (pretty-print 'evaluating-visit-code-of-gamma)))

  (define (the-func)
    (list 'gamma::the-func (delta::the-func) (beta::the-func)))

  (pretty-print 'evaluating-invoke-code-of-gamma)
  #| end of module |# )

;;; end of file
