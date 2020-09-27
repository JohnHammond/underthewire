# Century 4 -> Century 5

[https://underthewire.tech/century/century4.htm](https://underthewire.tech/century/century4.htm)

> The password for Century5 is the name of the file within a directory on the desktop that has spaces in its name.
> 
> NOTE:
> - The password will be lowercase no matter how it appears on the screen.

-----------------

I log in with:

```bash
plink century4@century.underthewire.tech -pw "123" -batch
```

On Linux:

```bash
sshpass -p "123" ssh century4@century.underthewire.tech
```


I ran the following to get the files in the directory that have spaces in the name:


```
ls | Where { $_.Name -Match " " } | % { dir $_ | Select Name }
```

With that info, we can determine the credentials for the next level:

| century5 | 61580 | 