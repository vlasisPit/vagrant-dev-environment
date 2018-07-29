# Requirements
* Install VirtualBox (tested with 5.2.16)
* Install Vagrant (tested with 2.1.2)
* TCP port 9090 must be free.

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
