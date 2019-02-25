function append_if_not_present {
  grep -q -F "include '$2'" $1
  if [ $? -ne 0 ]; then
    echo -e "\n$2" >> $1
  fi
}

function has_command {
  hash $1 2>/dev/null
}

function is_apty {
  has_command "apt"
}

function is_dnfy {
  has_command "dnf"
}

function get_package_manager {
  if is_apty; then
    echo "apt"
  elif is_dnfy; then
    echo "dnf"
  fi
}

function is_linux {
  test "Linux" = "$(uname)"
}

function is_mac {
  test "Darwin" = "$(uname)"
}

function is_wsl {
  grep -q Microsoft /proc/version &> /dev/null
}

function is_ubuntuy {
  grep -Ei 'buntu|mint|elementary' /etc/*release &> /dev/null
}

function is_fedora {
  grep -Ei 'fedora' /etc/*release &> /dev/null
}
