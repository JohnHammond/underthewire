# First accept the host key if you have not before:
echo y | plink century1@century.underthewire.tech -pw century1 "exit" 2>&1>$nil

# Now log in properly
plink century1@century.underthewire.tech -pw century1 -batch