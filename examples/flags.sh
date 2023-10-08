#!/bin/bash
#-----------------------CABEÇALHO---------------------------#

#-------------------------FLAGS-----------------------------#

#-----------------------VARIÁVEIS---------------------------#
VERSION="1.0"
PASSWORD="$(cat /etc/passwd | cut -d : -f 1 | sort)"
HELP="
  $(basename $0) - [ options ]

  -s - Ordem alfabética
  -v - Versão
  -h - Ajuda
"
#-----------------------EXECUÇÃO---------------------------#
case "$1" in
    -h) echo "$HELP"     && exit 0 ;;
    -s) echo "$PASSWORD" && exit 0 ;;
    -v) echo "$VERSION"  && exit 0 ;;
     *) echo "$HELP"     && exit 0 ;;
esac