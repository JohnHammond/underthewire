# Century 3 -> Century 4

[https://underthewire.tech/century/century3.htm](https://underthewire.tech/century/century3.htm)

> The password for Century4 is the number of files on the desktop.

-----------------

I log in with:

```bash
plink century3@century.underthewire.tech -pw "invoke-webrequest443" -batch
```

On Linux:

```bash
    sshpass -p "invoke-webrequest443" ssh century3@century.underthewire.tech
```


I run the following to get the count of files in the Desktop:


```
(ls -File | Measure-Object).Count
```

This value tells me the 

With that info, we can determine the credentials for the next level:

| century4 | 123 | 