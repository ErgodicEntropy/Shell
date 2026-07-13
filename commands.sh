#FILE & DIRECTORY MANAGEMENT
ls -alid
    permission owner group size modificationDate name
    permission = type (d-lcbps) permission codes line count (how many hard links or physica pointers are pointing to the file in question)
pwd 
cd [dir] ..
mkdir -p
rmdir
rm -rf
cp file1 file2
mv file directory
open 
touch
cat
nano
emacs
vim
more
less
head
tail
ln file hardlink
ln -s file softlink/symbolic link
gzip
    gzip alone delets the original filee
    gzip -k keeps the original file intact
    gzip -d decompress the file like gunzip
    gzip -[1-6] determines the quality of compression
gunzip
tar -cvfxz: c for create archive, v for verbose, f for archive filename, x for extract, z for gzip compression => tar packages or aggregates multiples files together
chmod u/g/o/a+-=rwx
    x = 1
    w = 2
    r = 4
    rwx = 7
    r-x = 5
    rw- = 6
    -wx = 3


    #example
    #symbolic mode: modify existing permissions
    chmod u+x file.sh -> add execution permission to the user (owner)
    chmod g-r file.sh -> remove read permission from the group

    #numeric mode: combines all at once i.e., user, group and others in one take by setting permission bits explicitly
    chmod 100 file.sh
chown
<: input a file to a command
>: overrite an existing file with comamnd output -> redirect stdout by overwriting file content 
>>: append an exiting file with command output
2>: overrite an existing file with errors stderror stream
2>>: append...
&>: redirect both output and error to overwrite existin file contents
|: pipe a command output to a command input
file truncation: 
    chmod +w followed by truncate -s SIZE file
file execution:
    bash file.sh
    sh file.sh
    chmod +x file.sh followed by ./file.sh


#TEXT PROCESSING & SEARCH
find
grep
sed
awk

#USER & SYSTEM ADMINISTRATION
man
sudo
su

#SYSTEM & PROCESS MONITORING
top
htop
ps
kill 
df
du

#NETWORKING
ping
ssh-keygen -t ed25519 -C "username@mail.com" => create a ssh private and public key
    enter file name
    add passphrase
ssh-copy-id username@server_ip => copy the public key to a VPS server
ssh username@server_ip => make connection
ssh-add -l => verify the validity of the public key (after manually pasting it onto the platform SSH settings) with the ssh agent
ssh-add [private key] => add private key
wget