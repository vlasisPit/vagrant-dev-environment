# Requirements
* Install VirtualBox (tested with 5.2.16)
* Install Vagrant (tested with 2.1.2)
* TCP port 9090 must be free.
* Download from here `https://spark.apache.org/downloads.html` and download a pre-built for Hadoop 2.7 version of Spark. This project works 
only with file `spark-2.3.1-bin-hadoop2.7.tgz`. Place this file manually inside `userLibs` folder after cloning the project.
If you want to use another Spark version, you must change the file `shell\install-spark.sh`.  

# Description
This project provides a Vagrant environment running on VilrtualBox with already installed Java, Scala, Hadoop and Spark.
You can create applications and place them in "applications" shared folder and test them in Debian OS.

# Instructions

* Create a new file named `c:\ProgramData\gemrc` which must contain the following line:

`:ssl_verify_mode: 0`

* Find your Vagrant installation(usually in `c:\HashiCorp\Vagrant` path). Find a file named `cacert.pem` inside `embedded` folder and run:

`SSL_CERT_FILE=c/HashiCorp/Vagrant/embedded/cacert.pem vagrant plugin install vagrant-proxyconf`
`SSL_CERT_FILE=c/HashiCorp/Vagrant/embedded/cacert.pem vagrant plugin install vagrant-vbguest`

* Run `vagrant up` and the VM will start booting (This may take some time).

* When done, run `vagrant ssh` in order to connect to guest machine you created.

* When you want shut down your PC/laptop, `vagrant halt` and shut down. Later, when you want to boot your VM again, `vagrant up`.  

* If you want to  destroy completely your VM, `vagrant destroy -f`. Take care all VMs will be destroy. If you want to destroy a 
specific VM `vagrant global-status` and then `vagrant destroy ID`.

# Notes
If you encounter when running the scripts this error `/bin/bash^M: bad interpreter: No such file or directory`
then change the EOL conversion of each script to UNIX by using a text editor, like notepad++.