
(cl:in-package :asdf)

(defsystem "amrl_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :amrl_msgs-msg
)
  :components ((:file "_package")
    (:file "SocialPipsSrv" :depends-on ("_package_SocialPipsSrv"))
    (:file "_package_SocialPipsSrv" :depends-on ("_package"))
  ))