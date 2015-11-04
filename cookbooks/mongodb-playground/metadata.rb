name              "mongodb-playground"
maintainer        "Sardo Ip"
maintainer_email  "sardo.ip@nxtomo.hk"
license           "Apache 2.0"
description       "Build MongoDB test environment."
version           "0.0.1"

recipe "mongodb-playground", "Install mongodb."

%w{ubuntu}.each do |os|
  supports os
end
