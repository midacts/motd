# Class: motd
#
# This modules manages the /etc/motd files using a template
#
# Parameters:
#
# Actions:
#
# Requires: 'figlet' (apt-get install figlet)
#  This is used to add the ascii characters used in the template file
# 
# Sample Usage:
#  include motd
#  puppet apply -e "class {'motd':}"
class motd {
  $ascii= generate('/bin/sh', '-c', "/usr/bin/figlet -c -w 60 ${hostname}")
  
  file {'/etc/motd':
    ensure	=> file,
    path	=> '/etc/motd',
    owner	=> 'root',
    mode	=> '0644',
    content	=> template('motd/motd.erb'),
    before	=> Notify['motd'],
  }

  notify {'motd':
    message	=> 'MOTD has been synced!',
  }
 }
