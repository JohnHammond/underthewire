# Century 5 -> Century 6

[https://underthewire.tech/century/century5.htm](https://underthewire.tech/century/century5.htm)

> The password for Century6 is the short name of the domain in which this system resides in > PLUS the name of the file on the desktop.
> 
> NOTE:
> - If the short name of the domain is "blob" and the file on the desktop is named "1234", the > password would be "blob1234".
> - The password will be lowercase no matter how it appears on the screen.

-----------------

I log in with:

```bash
plink century5@century.underthewire.tech -pw "61580" -batch
```

On Linux:

```bash
sshpass -p "61580" ssh century5@century.underthewire.tech
```

I ran the following to get the short domain name. I'm using some WMI here!

```
(gwmi Win32_NTDomain).DomainName
```

This returned `underthewire`. And to get the filename on the Desktop:

```bash
ls
# 3347
```

With that info, we can determine the credentials for the next level:

| century6 | underthewire3347 | 