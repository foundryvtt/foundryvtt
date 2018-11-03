Installation Instructions
*************************

These are the basic setup instructions for manually installing the Foundry VTT application.

..  error:: Foundry VTT is not yet released or available to the public. These instructions are internal for authorized developers!

..  warning:: You will only be able to follow these instructions if you have been granted access to the source code.

Once the project gets closer to release, these steps will be automated as part of a normal application installer.


Windows Application
===================

Follow these steps to install the Foundry VTT software on Windows as a native desktop application.

1.  **Install Node.js.** In order to develop the app you will need to install Node.js. You can download installers for
    Node from the following URL ``https://nodejs.org/en/download/``.

2.  **Create Parent Directory and Clone Repository.** Create a parent directory in a location of your choosing, for
    example (in my case) ``D://Games/FoundryVTT``. Clone the contents of this repository into the ``app`` subfolder
    of this parent directory.

3.  **Download Node-Webkit.** Lastly, you will need to download the contents of Node-Webkit ``https://nwjs.io/``
    which provides the application layer. Choose the SDK version so you can debug the server background window.
    Download the nwjs archive to the same parent folder ``FoundryVTT`` and extract it as a subfolder named ``nwjs``.
    You should now have two subfolders, one named ``app`` and one named ``nwjs``.

4.  **Install Dependency Modules.** Go into your app folder, open the command prompt with ``cmd`` and install
    dependency node modules using ``npm install``. This may take some time.

5.  **Run the Application.** Lastly, we can run the application from the command line using.::

    ..\nwjs\nw.exe .

**Why is all this necessary?** In a final distributed version this will all be bundled and none of these steps will
be required, but keeping things separate for now is better for development while things are rapidly changing.

Dedicated Server
================

These instructions are for installing Foundry VTT on a Linux host to run as a dedicated headless server.

1.  **Install Node.js.** First install node.js, the following is the easiest way for AWS instances.::

        sudo yum update -y
        sudo yum install -y gcc gcc-c++ make openssl-devel
        curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
        sudo yum install -y nodejs


2.  **Clone the Repository.** Pull the repository contents to a directory of your choice, in this case I use
    ``${HOME}/foundryvtt``.::

        cd ~
        sudo yum install -y git
        git clone https://gitlab.com/foundrynet/foundry-vtt.git foundryvtt -b master


3.  **Install dependency packages.** Use ``npm`` to install all the required packages.::

        cd foundryvtt
        npm install
        npm audit fix --force

4.  **Run the server.** We can start the server using the basic Node invocation but passing the `--headless` flag.::

        node main.js --headless
