# IBM I GO  (based on GO 1.20.5)

This repo is an attempt to compile Go with CGO application on IBM I AIX. I used lot of analysis and research done by other people like 
- [Micah Kimel](https://www.linkedin.com/in/micahkimel/)
- [Mike Measel](https://www.linkedin.com/in/measel/)

and every one involved in the discussion on the following git issue (specially the user rfx77)

https://github.com/golang/go/issues/45017



#### All the trademarks belong to their respective owners. 

### Special thanks to [Norman Koller](https://www.linkedin.com/in/norman-koller-94a5b990/) (RZKH GmbH) to provide required infrastructure and support !!!


# Prerequisites
- IBM I 7.4 +
  - I have tested the compiled binary on 7.4 and 7.5
  - Compiled binary might work on lower versions but I have not tried and so I am not sure.
- GCC 10
  - GCC 10 is not available for version 7.2 or lower
  - use command `gcc --version`
  - There is a possibility that gcc points to older version and gcc-10 points to the newer version
  - In that case we will need gcc-10
  - If gcc is installed but not found, use following command to include open source packages to your path
    - `export PATH=$PATH:/QOpenSys/pkgs/bin`
- Required yum packages for ODBC (if you want to use ODBC)
  - unixODBC.ppc64
    - `yum install unixODBC`
  - unixODBC-devel.ppc64
    - `yum install unixODBC-devel`
  - libodbc2.ppc64
    - `yum install libodbc2`
  - ibm-iaccess.ppc64
    - `yum install ibm-iaccess`



# Steps
- clone this repo on IBM I
- Setup PATH env variable
  - `export PATH=$PATH:{GIT_REPO_CLONE_DIRECTORY}/ibmigo/go/bin`
  - `export GOROOT={GIT_REPO_CLONE_DIRECTORY}/ibmigo/go`
  - `export PATH=$PATH:/QOpenSys/pkgs/bin`
- Create a tmp directoy in your home dir(remove old one if needed)
  - `rm -r /home/{USER}/tmp`
  - `mkdir /home/{USER}/tmp`



# Compile your Go app
- `GOTMPDIR="/home/{USER}/tmp" CC="/QOpenSys/pkgs/bin/{gcc-10-location}" go build   {required parameters}  {path to go main package}`








