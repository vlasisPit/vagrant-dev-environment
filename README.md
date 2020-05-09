# Requirements
* Install VirtualBox (tested with 5.2.16)
* Install Vagrant (tested with 2.1.2)
* TCP port 9090 must be free.

# Supported Technologies
* Java
* Scala
* Sbt
* Spark
* Redis
* Docker
* Maven

# Description
This project provides a Vagrant environment running on VilrtualBox with already installed Java, Scala, Sbt, Spark, Redis DB, Docker and Maven.
You can create applications and place them in "applications" shared folder and test them in Debian OS.

# Instructions

* If you are behind a proxy, create a new file named `c:\ProgramData\gemrc` which must contain the following line:

`:ssl_verify_mode: 0`

* Find your Vagrant installation(usually in `c:\HashiCorp\Vagrant` path). Find a file named `cacert.pem` inside `embedded` folder and run:

`SSL_CERT_FILE=c/HashiCorp/Vagrant/embedded/cacert.pem vagrant plugin install vagrant-proxyconf`
`SSL_CERT_FILE=c/HashiCorp/Vagrant/embedded/cacert.pem vagrant plugin install vagrant-vbguest`

* Run `vagrant up` and the VM will start booting (This may take some time).

* When done, run `vagrant ssh` in order to connect to guest machine you created. If this command does not work, you can use " ./sshVagrant.sh".

* When the setup of the new environment is finished, run manually the commands on `env.sh script` in order to setup maven properly (this is to be fixed).

* Run `docker-compose up` in `scripts` folder in order to run MongoDB, Kafka and Redis. You can access them from host machine by typing `localhost:xxxx` because the ports are exposed using port forwarding mechanism.

* You can change the `settings.xml` which is in `/opt/maven/conf/` folder.

* If you have a problem with the truststore when you execute a maven command on a Java project, run the `01_pkcs12-cacerts-workaround.sh` script to workaround.

* When you want shut down your PC/laptop, `vagrant halt` and shut down. Later, when you want to boot your VM again, `vagrant up`.  

* If you want to  destroy completely your VM, `vagrant destroy -f`. Take care all VMs will be destroy. If you want to destroy a 
specific VM `vagrant global-status` and then `vagrant destroy ID`.

# Notes
If you encounter when running the scripts this error `/bin/bash^M: bad interpreter: No such file or directory`
then change the EOL conversion of each script to UNIX by using a text editor, like notepad++, or execute
`sed -i -e 's/\r$//' script.sh`
In file `scripts\install-docker.sh`, you must specify yours docker cloud ID/password.
In order to set the environment variables,
```
cd /scripts
. env.sh
```
