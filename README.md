vagrant-wordpress
=================

Vagrant configuration to load up Apache2, MySQL, PHP5 and latest version of Wordpress on Ubuntu precise64 box.



Usage
=====

[Download Vagrant](http://www.vagrantup.com/downloads.html).

    git clone git@github.com:prostoalex/vagrant-wordpress.git
    cd vagrant-wordpress
    vagrant up

Ideally see something like this:

    Bringing machine 'default' up with 'virtualbox' provider...
    [default] Importing base box 'precise64'...
    [default] Matching MAC address for NAT networking...
    [default] Setting the name of the VM...
    [default] Clearing any previously set forwarded ports...
    [default] Fixed port collision for 22 => 2222. Now on port 2200.
    [default] Creating shared folders metadata...
    [default] Clearing any previously set network interfaces...
    [default] Preparing network interfaces based on configuration...
    [default] Forwarding ports...
    [default] -- 22 => 2200 (adapter 1)
    [default] -- 80 => 8080 (adapter 1)
    [default] Booting VM...
    [default] Waiting for machine to boot. This may take a few minutes...
    [default] Machine booted and ready!
    [default] The guest additions on this VM do not match the installed version of
    VirtualBox! In most cases this is fine, but in rare cases it can
    cause things such as shared folders to not work properly. If you see
    shared folder errors, please update the guest additions within the
    virtual machine and reload your VM.

    Guest Additions Version: 4.2.0
    VirtualBox Version: 4.3
    [default] Mounting shared folders...
    [default] -- /vagrant
    [default] Running provisioner: shell...
    [default] Running: C:/Users/alex/AppData/Local/Temp/vagrant-shell20140131-217568-aiamyl
    stdin: is not a tty
    Updating packages...
    Installing debconf-utils
    Pre-seeding mysql with default password SOMEPASSWORD123
    Installing Apache and setting it up...
    Installing subversion...
    Checking out Wordpress repo into /var/www
    Successfully checked out WordPress. You might want to create a new MySQL user and password, and update wp-config.php accordingly. MySQL root password is SOMEPASSWORD123 and should probably be changed as
    well.

