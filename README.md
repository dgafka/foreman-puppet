## Password

Login into container and run `foreman-rake permissions:reset` 


    Reset to user: admin, password: ktXCx5aFakhiVu2E
    
The first time puppet agent connects to puppet master, we need to sign certificate.

You can see all certificates in here:

    sudo puppet cert list
    
Then you can sign it by running

    sudo puppet cert sign host1.nyc2.example.com
    
    
Each puppet agent sends information about the system.  
You can see what information it sends via command:
    
    facter
    

Puppet agent check periodically for catalog - a compiled list of resources and their desired states  
that are relevant to the agent, determined by the main manifest. By default it's 30min.  
You can run it manually by:

    puppet agent --test
    


If you want to run manifest directly on the server, you can do it using 

    puppet apply /etc/puppet/modules/test/init.pp
    
    
    
