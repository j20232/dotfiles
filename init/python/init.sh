switch(uname)
  case Darwin
    source /init/python/osx.sh
  case Linux
    if test -e /etc/debian_version; or test -e /etc/debian_release
      # Check Ubuntu or Debian
      if test -e /etc/lsb-release
        # Ubuntu
        source /init/python/ubuntu.sh
      else
        # Debian
        distri_name="debian"
      end
    else if test -e /etc/fedora-release
      # Fedra
      distri_name="fedora"
    else if test -e /etc/redhat-release
      if test -e /etc/oracle-release
        # Oracle Linux
        distri_name="oracle"
      else
        # Red Hat Enterprise Linux
        # CentOS
        distri_name="redhat"
      end
    else if test -e /etc/turbolinux-release
      # Turbolinux
      distri_name="trubol"
    else if test -e /etc/SuSe-release
      # SuSE Linux
      distri_name="suse"
    else if test -e /etc/mandriva-release
      # Mandriva Linux
      distri_name="mandriva"
    else if test -e /etc/vine-release
      # Vine Linux
      distri_name="vine"
    else if test -e /etc/gentoo-release
      # Gentoo Linux
      distri_name="gentoo"
    else
      # Other
      echo "Unknown distribution"
      distri_name="unknown"
    end
  end 
