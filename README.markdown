MOTD
====

This module is based off of 'LittleHome's' blog found at: "http://littlebloghome.blogspot.com/2012/04/display-welcome-message-with-puppet.html"

Usage:
------
    To create a unique motd for each linux machine. It uses 'figlet' to product the server's hostname as ascii characters.

Dependencies:
-------------
    This Puppet Module requires the program 'figlet' to run. It is only required to be installed on the Puppet Master 
    to work correctly.
