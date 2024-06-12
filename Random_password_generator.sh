     #!/bin/zsh

     if [ $# -ne 2 ]; then
          echo "The number of arguments passed is less or more than allowed."
          exit
     fi

     char_num="$1"
     pass_num="$2"

     cat /dev/urandom | tr -dc '[:alnum:][:punct:]' | head -c "$((char_num * pass_num))" | sed "s/.\{${char_num}\}/&\n/g"
