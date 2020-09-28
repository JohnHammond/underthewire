# Century 7 -> Century 8

[https://underthewire.tech/century/century7.htm](https://underthewire.tech/century/century7.htm)

> The password for Century8 is in a readme file somewhere within the contacts, desktop, documents, downloads, favorites, music, or videos folder in the user's profile.

-----------------

I log in with:

```bash
plink century7@century.underthewire.tech -pw "197" -batch
```

On Linux:

```bash
sshpass -p "197" ssh century7@century.underthewire.tech
```

I ran this to find the files in the directories.

```
cd ..
ls -Recurse 
```


I found within `Downloads`, the `Readme.txt` file.

```
C:\users\century7\Downloads\Readme.txt
```


With that info, we can determine the credentials for the next level:

| century8 | 7points | 