switch (uname)
  case Darwin
    source ./init/python/osx.sh
  case Linux
    if test -e /etc/debian_version; or test -e /etc/debian_release
      # Check Ubuntu or Debian
      if test -e /etc/lsb-release
        # Ubuntu
        source ./init/python/ubuntu.sh
      end
    end
  end 
