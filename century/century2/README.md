# Century 2 -> Century 3

[https://underthewire.tech/century/century2.htm](https://underthewire.tech/century/century2.htm)

> The password for Century3 is the name of the built-in cmdlet that performs the wget like function within PowerShell PLUS the name of the file on the desktop.

-----------------

I log in with:

```bash
# First accept the host key if you have not before:
echo y | plink century2@century.underthewire.tech -pw '10.0.14393.3866' "exit" 2>&1>$nil

# Now log in properly
plink century2@century.underthewire.tech -pw century2 -batch
```

On Linux:

```
sshpass -p '10.0.14393.3866' ssh century2@century.underthewire.tech
```


I can tell that the built-in cmdlet that performs the `wget` like function within PowerShell is:


```
Invoke-WebRequest
```

Once logged in, I run the command:


```bash
dir
```

The output is:

```


    Directory: C:\users\century2\desktop


Mode                LastWriteTime         Length Name                                      
----                -------------         ------ ----                                      
-a----        8/30/2018   3:29 AM            693 443                                       


```

With that info, we  can determine the credentials for the next level:

| century3 | invoke-webrequest443 | 