
(cl:in-package :asdf)

(defsystem "ins_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BmpMsg" :depends-on ("_package_BmpMsg"))
    (:file "_package_BmpMsg" :depends-on ("_package"))
    (:file "ByteVector" :depends-on ("_package_ByteVector"))
    (:file "_package_ByteVector" :depends-on ("_package"))
    (:file "EkfStatusMsg" :depends-on ("_package_EkfStatusMsg"))
    (:file "_package_EkfStatusMsg" :depends-on ("_package"))
    (:file "GnssAjMsg" :depends-on ("_package_GnssAjMsg"))
    (:file "_package_GnssAjMsg" :depends-on ("_package"))
    (:file "GnssMsg" :depends-on ("_package_GnssMsg"))
    (:file "_package_GnssMsg" :depends-on ("_package"))
    (:file "ImuMsg" :depends-on ("_package_ImuMsg"))
    (:file "_package_ImuMsg" :depends-on ("_package"))
    (:file "InsMsg" :depends-on ("_package_InsMsg"))
    (:file "_package_InsMsg" :depends-on ("_package"))
    (:file "MagMsg" :depends-on ("_package_MagMsg"))
    (:file "_package_MagMsg" :depends-on ("_package"))
    (:file "OdomMsg" :depends-on ("_package_OdomMsg"))
    (:file "_package_OdomMsg" :depends-on ("_package"))
    (:file "PairMeass" :depends-on ("_package_PairMeass"))
    (:file "_package_PairMeass" :depends-on ("_package"))
    (:file "UwbAoaDLTdoaMsg" :depends-on ("_package_UwbAoaDLTdoaMsg"))
    (:file "_package_UwbAoaDLTdoaMsg" :depends-on ("_package"))
    (:file "UwbAoaMsg" :depends-on ("_package_UwbAoaMsg"))
    (:file "_package_UwbAoaMsg" :depends-on ("_package"))
    (:file "UwbMsg" :depends-on ("_package_UwbMsg"))
    (:file "_package_UwbMsg" :depends-on ("_package"))
    (:file "UwbPos" :depends-on ("_package_UwbPos"))
    (:file "_package_UwbPos" :depends-on ("_package"))
    (:file "UwbPosDownMsg" :depends-on ("_package_UwbPosDownMsg"))
    (:file "_package_UwbPosDownMsg" :depends-on ("_package"))
    (:file "UwbPosUpMsg" :depends-on ("_package_UwbPosUpMsg"))
    (:file "_package_UwbPosUpMsg" :depends-on ("_package"))
    (:file "UwbTdoaPosMsg" :depends-on ("_package_UwbTdoaPosMsg"))
    (:file "_package_UwbTdoaPosMsg" :depends-on ("_package"))
    (:file "WheelSpeedMsg" :depends-on ("_package_WheelSpeedMsg"))
    (:file "_package_WheelSpeedMsg" :depends-on ("_package"))
  ))