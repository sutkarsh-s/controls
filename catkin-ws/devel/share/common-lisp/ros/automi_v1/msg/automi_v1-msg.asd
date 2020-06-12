
(cl:in-package :asdf)

(defsystem "automi_v1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "map" :depends-on ("_package_map"))
    (:file "_package_map" :depends-on ("_package"))
    (:file "object" :depends-on ("_package_object"))
    (:file "_package_object" :depends-on ("_package"))
  ))