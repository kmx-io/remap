;;
;;  remap  -  modular transactional file system in Common Lisp
;;  Thomas de Grivel <thoxdg@gmail.com> +33614550127
;;

(in-package :common-lisp-user)

(defpackage :remap.system
  (:use :cl :asdf))

(in-package :remap.system)

(defsystem :remap
  :name "remap"
  :author "Thomas de Grivel <thoxdg@gmail.com>"
  :version "0.2"
  :description "modular transactional file system"
  :depends-on ("babel-stream"
               "cffi-dirent"
               "cffi-unistd"
               "cl-stream"
               "unistd-stdio"
               "local-time"
               "rollback"
               "split-sequence")
  :components
  ((:file "package")
   (:file "remap" :depends-on ("package"))
   (:file "shell" :depends-on ("remap"))
   (:file "unistd" :depends-on ("remap"))))
