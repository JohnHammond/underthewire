# Century 6 -> Century 7

[https://underthewire.tech/century/century6.htm](https://underthewire.tech/century/century6.htm)

> The password for Century7 is the number of folders on the desktop.

-----------------

I log in with:

```bash
plink century6@century.underthewire.tech -pw "underthewire3347" -batch
```

On Linux:

```bash
sshpass -p "underthewire3347" ssh century6@century.underthewire.tech
```

With this command I could get the number of folders on the desktop.

```
(ls -Directory | measure).Count
```


```
197
```

With that info, we can determine the credentials for the next level:

| century7 | 197 | 