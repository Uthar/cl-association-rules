(defsystem #:cl-association-rules
  :version "0.0.1"
  :description "An implementation of the apriori algorithm to mine association rules in Common Lisp."
  :author "Diogo Franco"
  :license "MIT"
  :serial t
  :components ((:file "package")
               (:file "rule")
               (:file "apriori"))
  :in-order-to ((test-op (test-op #:cl-association-rules/tests))))

(defsystem #:cl-association-rules/tests
  :version "0.0.1"
  :description "The tests for the cl-association-rules system."
  :author "Diogo Franco"
  :defsystem-depends-on (#:prove-asdf)
  :depends-on (#:cl-association-rules #:prove)
  :components ((:test-file "tests"))
  :perform (test-op (o c) (symbol-call :prove :run c)))
