export PATH=$PATH:/home/SUMITG/ibmigo/go/bin
export GOROOT=/home/sumitg/ibmigo/go
export PATH=$PATH:/QOpenSys/pkgs/bin
alias gcc="/QOpenSys/pkgs/bin/gcc-10"

rm -r /home/sumitg/tmp
mkdir /home/sumitg/tmp

# GOTMPDIR="/home/sumitg/tmp" go run main.go
# GOTMPDIR="/home/sumitg/tmp" CC="/QOpenSys/pkgs/bin/gcc-10" go run main.go


# to disable build cache  GOFLAGS="-count=1"