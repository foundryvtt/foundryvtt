..	_hosting:

Hosting and Connectivity Guide
******************************

In Foundry Virtual Tabletop, a game session has one **host** and several **clients**. In order to enjoy a multi-player gaming experience the clients must be able to connect to the host which is running the tabletop software. 

------

Hosting Modes
=============

There are two main hosting modes. The following section attempts to help you understand which hosting mode may be the best choice for you.

Self-Hosted
-----------

In a self-hosted setting, the application runs on your own computer and creates a local web server which allows other players to connect directly to your computer. The self-hosted mode is most similar to the setup of Fantasy Grounds, Maptool, or GM Forge.

**Advantages**

* Free.
* Almost zero setup.
* Easy management of content using your own computer's file system.

**Disadvantages**

* Your world is only available when the host is running a session.
* Requires clients to be able to connect to your computer - either through a local network or using port forwarding.
* Player experience depends on the host's internet speed.


Dedicated
---------

In a dedicated hosting setting, the application runs on a persistent web server and all players (including the GM) connect to the game session. The dedicated hosting mode is most similar to the experience of Roll20 or Astral.

**Advantages**

* Your world is always online, although gameplay can be paused in between sessions
* Clients can easily connect to your world regardless of local network configurations.
* Network transfer speeds are typically faster than self-hosted resulting in a better player experience.

**Disadvantages**

* You need to have or pay for a web server.
* Somewhat more complicated setup, especially for users who are unfamiliar with Linux.
* Your world's static files (maps, tokens, music) need to be transferred to the host server.

------

Self-Hosted Configuration
=========================

In a self-hosted configuration, you will need to ensure that clients can connect to your PC using your IP address.
There are multiple ways to achieve this and you can use a combination of approaches for different players. By default,
Foundry Virtual Tabletop runs on port ``30000``.

1. **Local Area Network**. If your players are on the same network as you, they should be able to connect to your
computer using your local IP address. To discover your own local IP address: for Windows check your Connection Settings
or use ``ipconfig`` from the Command Prompt, for Mac look at Network Settings under System Preferences or use
``ipconfig`` in your Terminal, for Linux use ``hostname -i``. Local network players should connect to your local
IP address and port, for example ``http://x.x.x.x:30000``.

2. **Port Forwarding**. If your players are connecting over the internet, they will use your public IP address.
Use a site like http://whatismyip.host/ to easily discover your public IP address. In order for this to work, you
will need to forward web traffic for your local network to send the Foundry VTT port to your computer's local IP
address. This step is required in order for your network to know where to send the connection. Port forwarding can
be intimidating for some users, but it is the recommended approach as it is more secure than other options. The exact
steps to implement port forwarding will depend on your network configuration and hardware. Most frequently, port
forwarding is done within your router configuration interface. The website https://portforward.com/ has general
instructions for the most common router configurations. Once the port is forwarded corretly players can connect
to your public IP address in the browser ``http://x.x.x.x:30000``.

3. **Virtual Private Network**. If your players are remote but port forwarding is not an option, a third option can be
to use a VPN service. Please be aware - if you find yourself in this situation, the dedicated hosting option may be a
better choice for you. With a virtual private network, other users will have access to details about your computer as
well as any content (like documents or pictures) that you are sharing with your local network. If you do choose to go
down this route, however, services like Hamachi (https://www.vpn.net/) can create a virtual network - once inside a
VPN your players can connect to your session using the above instructions for Local Area Network.

For self-hosted installation simply download the zipped application which is suitable for your operating system and
extract the archive into a directory of your choice.

The first time starting the application under a self-hosted configuration, you may be prompted by your operating system
for permission to allow the application to interact with the external network. Be sure to allow this permission otherwise
network traffic may be blocked by your operating system firewall.

------

Dedicated Configuration
=======================


The configuration for a dedicated server will vary somewhat depending on your hosting platform and networking
requirements. This section provides a simple configuration example for running the server using an AWS free tier
t2.micro instance (https://aws.amazon.com/ec2/).

1. Launch a t2.micro (or larger) instance using the Linux distribution of your choice. These instructions are for the
standard Amazon Linux AMI.

2. Configure the inbound rules for your instance security group using the AWS dashboard to allow inbound traffic using
a ``Custom TPC Rule`` for port ``30000`` (or a different port of your choice).

3. Connect to your new host via SSH. You will need to configure your SSH client to use the security key-pair provided
by AWS.

4. Update software versions and install ``nodejs`` to host the server.::

    sudo yum update -y
    sudo yum install -y gcc gcc-c++ make openssl-devel
    curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
    sudo yum install -y nodejs

5. Download and extract the Linux version of the software in your home directory (or somewhere else if you prefer).::

	cd ~
	curl -s <Linux Alpha Download URL> > foundryvtt.zip
	unzip foundryvtt.zip
	rm foundryvtt.zip

6.	Start the server, being sure to pass the headless flag: ``node main.js --headless``.

7. 	Once the server is running, both you and your players can connect to the server using the public IP address of
your EC2 server which is listed in the AWS dashboard for your instance, for example ``http://x.x.x.x:30000``.

------


Changing Your Port
==================

By default, Foundry VTT uses port ``30000``. You can change this by manually editing the ``options.json`` file in
the root of your installation directory.

..	note:: Eventually I will add a settings menu where this can be configured without a manual file edit required.


Where Do I Put My Content?
==========================

Once your server is up and running the first step is to create a new World. Once you have a world created, you will
want to start making static content like maps, tokens, audio files, and more available to be used in your world. Your
world data is stored in the ``public/worlds/<your-world>`` directory. Feel free to use any directory structure you
want within the ``public`` folder for organizing your content either for a single world or to be shared across
multiple worlds.

When referencing file locations within the VTT - all paths are relative to the ``public`` folder which is your content
root. For example; suppose you create the following file::

	public/worlds/my-world/maps/dungeons/deadly-dungeon-01.jpg

When using that map as the source for a new Scene - you should reference the file location as::

	worlds/my-world/maps/dungeons/deadly-dungeon-01.jpg

