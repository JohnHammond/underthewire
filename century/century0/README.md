# Century 0 -> Century 1

[https://underthewire.tech/century/century.htm](https://underthewire.tech/century/century.htm)

> The goal of this level is to log into the game. Do the following in order to achieve this goal.
> 
> 1. Obtain the initial credentials via the #StartHere channel on our Slack (https://underthewire.herokuapp.com/).
> 
> 2. After obtaining the credentials, connect to the server via SSH. You will need a SSH client such as Putty. The host that you will be connecting to is century.underthewire.tech, on port 22.
> 
> 3. When prompted, use the credentials for the applicable game found in the #StartHere Slack channel.
> 
> 4. You have successfully connected to the game server when your path changes to "PS C:\Users\Century1\documents>".

-----------------

Joining the Slack channel I see the credentials to start with are:

| century1 | century1 |

I log in with:

```bash
ssh century1@century.underthewire.tech
```

To automate this login within Windows, I use `plink`:

```bash
# First accept the host key if you have not before:
echo y | plink century1@century.underthewire.tech -pw century1 "exit" 2>&1>$nil

# Now log in properly
plink century1@century.underthewire.tech -pw century1 -batch
```

I install `plink` with Chocolatey:

```
choco install putty
```