# Docker Development Env On CoreOS

A docker application/service devevlopment environment on Vagrant/CoreOS with:

* All the goodies come with CoreOS, i.e. ETCD, Fleet, Flannel, Systemd, Journal, OS auto-updates etc.
* A [SkyDNS][SkyDNS] service.
* Support of a wildcard self-signed certificates, it's convient for https web/api.
* Fleet units for applications/services:

        cd apps
        ls 
        apache-php	certs		drone		flannel		jenkins		mysql		nodeapp		redis-admin	timer
        auto-build	confd		elasticsearch	gitlab		kibana		mysql-admin	postgres	registry	units
        bin		dind		express		haproxy		logstash	nginx		redis		skydns		wordpress

* Cluster configuration

Under nodes-conf directory you can find different size of cluster configurations and default service port mappings.  You can modify json files to change the defaults and then in Vagrant configuration, pick the one you will use:

    NODES_CONF = File.join(MY_PATH, "nodes-conf", "standalone.json")
    #NODES_CONF = File.join(MY_PATH, "nodes-conf", "cluster-flannel.json")
    #NODES_CONF = File.join(MY_PATH, "nodes-conf", "cluster.json")
    #NODES_CONF = File.join(MY_PATH, "nodes-conf", "cluster-large.json")
    #NODES_CONF = File.join(MY_PATH, "nodes-conf", "cluster-secure-etcd.json")

### Install dependencies

* [VirtualBox][virtualbox] 4.3.10 or greater.
* [Vagrant][vagrant] 1.6 or greater.

### Clone this project and get the cluster system up and running

	git clone https://github.com/xuwang/coreos-docker-dev.git
	cd coreos-docker-dev
	vagrant up
    vagrant ssh
    
### Clean it up

	exit # the coreos vm
	vagrant destroy

[virtualbox]: https://www.virtualbox.org/
[vagrant]: https://www.vagrantup.com/downloads.html
[using-coreos]: http://coreos.com/docs/using-coreos/
[SkyDNS]: https://github.com/skynetservices/skydns
[Docker-Registry]: https://github.com/docker/docker-registry


