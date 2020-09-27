# Century 1 -> Century 2

[https://underthewire.tech/century/century1.htm](https://underthewire.tech/century/century1.htm)

> The password for Century2 is the build version of the instance of PowerShell installed on this system.
> 
> NOTE:
> - The format is as follows: **.*.*****.****
> - Include all periods
> - Be sure to look for build version and NOT PowerShell version

-----------------

I log in with:

```bash
# First accept the host key if you have not before:
echo y | plink century1@century.underthewire.tech -pw century1 "exit" 2>&1>$nil

# Now log in properly
plink century1@century.underthewire.tech -pw century1 -batch
```


Once logged in, I run the command:


```bash
echo $PSVersionTable
```

This will display the `BuildVersion`.

We can narrow this down like so:

```
($PSVersionTable.BuildVersion).ToString()
```

With that info,  can determine the credentials for the next level:

| century2 | 10.0.14393.3866 | 