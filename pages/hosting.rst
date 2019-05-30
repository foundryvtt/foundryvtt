.. _hosting:

Hosting and Connectivity Guide
******************************

In Foundry Virtual Tabletop, a game session has one **host** and several **clients**. In order to enjoy a multi-player
gaming experience the clients must be able to connect to the host which is running the tabletop software.

------

Hosting Modes
=============

There are two main hosting modes. The following section attempts to help you understand which hosting mode may be the
best choice for you.

Self-Hosted
-----------

In a self-hosted setting, the application runs on your own computer and creates a local web server which allows other
players to connect directly to your computer. The self-hosted mode is most similar to the setup of Fantasy Grounds, Maptool, or GM Forge.

**Advantages**

* Free (assuming you have a computer).
* Almost zero setup.
* Easy management of content using your own computer's file system.

**Disadvantages**

* Your world is only available when the host is running a session.
* Requires clients to be able to connect to your computer - either through a local network or using port forwarding.
* Player experience depends on the host's internet speed.


Dedicated
---------

In a dedicated hosting setting, the application runs on a persistent web server using node.js and all players
(including the GM) connect to the game session. The dedicated hosting mode is most similar to the experience of
Roll20 or Astral Tabletop.

**Advantages**

* Your world is always online, although gameplay can be paused in between sessions
* Clients connect to your world regardless of local network configurations.
* Network transfer speeds are typically faster than self-hosted resulting in a better player experience.

**Disadvantages**

* Requires a accessible web server which is configured to serve the Foundry VTT application.
* More complicated initial setup, especially for users who are unfamiliar with web hosting.
* Your world's static files (maps, tokens, music) need to be served from a static location or from the web server.

------

Self-Hosted Configuration
=========================

In a self-hosted configuration, you will need to ensure that clients can connect to your PC using your IP address.
There are multiple ways to achieve this and you can use a combination of approaches for different players. By default,
Foundry Virtual Tabletop runs on port ``30000``.

..  warning:: **Firewall Rules:**
    For all self-hosted configuration models you will need to be sure that your local operating system firewall is 
    not blocking network traffic for the application. For Windows users, you should be prompted to allow (or deny)
    a firewall exception when the Foundry VTT application is first started. If you have followed other steps to 
    allow connectivity but users are still unable to connect, be sure to check your Firewall rules.

Local Area Network
------------------

If your players are on the same network as you, they should be able to connect to your
computer using your local IP address. To discover your own local IP address: for Windows check your Connection Settings
or use ``ipconfig`` from the Command Prompt, for Mac look at Network Settings under System Preferences or use
``ipconfig`` in your Terminal, for Linux use ``hostname -i``. Local network players should connect to your local
IP address and port, for example ``http://x.x.x.x:30000``.

Port Forwarding
---------------

If your players are connecting over the internet, they will use your public IP address.
Use a site like http://whatismyip.host/ to easily discover your public IP address. In order for this to work, you
will need to forward web traffic for your local network to send the Foundry VTT port to your computer's local IP
address. This step is required in order for your network to know where to send the connection. Port forwarding can
be intimidating for some users, but it is the recommended approach as it is more secure than other options. The exact
steps to implement port forwarding will depend on your network configuration and hardware. Most frequently, port
forwarding is done within your router configuration interface. The website https://portforward.com/ has general
instructions for the most common router configurations. Once the port is forwarded corretly players can connect
to your public IP address in the browser ``http://x.x.x.x:30000``.

Virtual Private Network
-----------------------

If your players are remote but port forwarding is not an option, a third option can be
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

To configure Foundry Virtual Tabletop for a dedicated server configuration there are a few simple steps to follow. Firstly
you will need to create a server instance on which you want to host the Foundry VTT application. Secondly you will need
to install Node.js and the Foundry VTT software.

Launch a Server Instance
------------------------

The configuration for a dedicated server will vary somewhat depending on your hosting platform and networking requirements. 
This section provides a simple configuration example for running the server using an AWS instance (https://aws.amazon.com/ec2/). 
Foundry Virtual Tabletop can work even with a t2.micro size instance which is supported by the free tier program which is an
easy way to begin trying out the software.

To get started, launch a t2.micro (or larger) instance using the Linux distribution of your choice. These instructions are for 
the standard Amazon Linux AMI. Configure the inbound rules for your instance security group using the AWS dashboard to allow 
inbound traffic using a ``Custom TPC Rule`` for port ``30000`` (or a different port of your choice). Lastly, connect to your 
new host via SSH. You will need to configure your SSH client to use the security key-pair provided by AWS.

Install Software
----------------

To get started with Foundry VTT, you will need to install ``nodejs`` which is used to host the server.

**For Red Hat / Amazon Linux**::

    sudo yum install -y gcc gcc-c++ make openssl-devel
    curl --silent --location https://rpm.nodesource.com/setup | sudo bash -
    sudo yum install -y nodejs

**For Debian / Ubuntu**::

    sudo apt install -y build-essential libssl-dev curl
    curl -sL https://deb.nodesource.com/setup | sudo bash -
    sudo apt install -y nodejs

..  note:: **Node.js for Windows**
    Note that you can run a dedicated server from Windows also, for Windows you should download and install node.js from 
    https://nodejs.org/en/download/. 

Once Node.js is installed, next download and extract the latest Foundry Virtual Tabletop Linux version from Patreon.::

    wget https://s3-us-west-2.amazonaws.com/foundryvtt/releases/<patreon-link-here>.zip -O foundryvtt.zip
    unzip foundryvtt.zip

Start the Server
----------------

Once you have extracted the Foundry VTT software and installed Node.js you can start the server by calling the main 
process script: ``node resources/app/main.js``.

**Additional Command-Line Options**
    
--port      [Optional] You may specify a specific port on which to run the application. The default is 30000.
--world     [Optional] You may specify the name of a specific World directory which should be automatically 
            loaded when the server is started.

Once the server is running, both you and your players can connect to the server using the public IP address of your 
web host, for example ``http://x.x.x.x:30000``.


Where Do I Put My Content?
==========================

Once your server is up and running the first step is to create a new World. Once you have a world created, you will
want to start making static content like maps, tokens, audio files, and more available to be used in your world.

The base application data is located in the ``<foundryvtt>/resources/app`` directory. Static content which is able to
be served to other players who connect to your game is located in the ``public`` folder within this directory. Within
the public folder you will find subfolders for ``worlds``, and ``modules`` where you will place most of your user
created content.

Specifically, the data for your world is stored in the directory ``<foundryvtt>/resources/app/public/worlds/<your-world>``.
Feel free to use any directory structure you want within your world and module folders for organizing your content,
but please avoid renaming or deleting pre-existing folders as that may break certain assumptions of the application.

When referencing file locations within the VTT - all paths are relative to the ``public`` folder which is your content
root. For example; suppose you create the following file::

	<foundryvtt>/resources/app/public/worlds/my-world/maps/dungeons/deadly-dungeon-01.jpg

When using that map as the source for a new Scene - you should reference the file location as::

	worlds/my-world/maps/dungeons/deadly-dungeon-01.jpg


..  warning:: **Regarding File Naming Conventions:**
    Since Foundry VTT works as a web server, you should be sure to use directory and file names which conform to web
    file and URL encoding conventions. You should generally avoid using spaces or special characters as these are
    likely to cause issues when serving your content to other players. See `Google URL Guidelines
    <https://developers.google.com/maps/documentation/urls/url-encoding>`_ for more detail.
