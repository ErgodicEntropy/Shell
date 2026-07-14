#FILE & DIRECTORY MANAGEMENT
ls -alid
    permission owner group size modificationDate name
    permission = type (d-lcbps) permission codes line count (how many hard links or physica pointers are pointing to the file in question)
pwd 
cd [dir] ..
mkdir -p
rmdir -p
rm -rf
cp file1 file2
mv file directory
open 
touch
    touch -m: update modification time to now of an existing file otherwise create it
    touch -t: modify modification time of an existing file
    touch -h -t: modify the modification time of a symbolic/soft link
cat
    cat -e
nano
emacs
vim
more
less
head
tail
ln file hardlink #create a hard link (deep file copy): a hard link is a link that has the same inode (file metadata) as the original file -> even if original file is deleted, hard link persists because it's a physical pointer
ln -s file softlink/symbolic link #symbolic or soft link (shallow file copy): a symbolic link is a virtual pointer to the original file (a shortcut) as it doesn't have the same inode but it increases the line count for itself and original file's -> if originall file is deleted, it gets deleted too.
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
chown owner file
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

C compilation:
    gcc -Wextra -Wall -Werror prerequisites.c -o executable #compile and link
    gcc -c -Wextra -Wall -Werror prerequisites.c -o executable #compile without link
    ./executable #run/execute the file
    gcc -c -Wextra -Wall -Werror prerequisites.c -o executable && ./executable #compile and execute

diff a b #produces a patch file describing differences
diff -u a b  #produces a patch file describing differences but more human-readable
patch a < patchfile #modify a by overwriting its content with b content. NOTE: this doesn't redirect to stoud steam hence no redirection is possible
patch -R a < patchfile #reverse patching

file -C -m magicfile #offset type value decription
file -b -m magicdb.mgc filename
#TEXT PROCESSING & SEARCH
find -type f/d/l/c/b/p/s -size +2/-2/2 -name "regex" -iname "regex" -mtime -atime -ctime -o -a -not/! -print -delete -exec [command]{} \;
grep -i -n -r -v -c -l "textpattern" filename
sed "s/original/new/2gi"
awk
crontab
tr 'original' 'new'
wc

#USER & SYSTEM ADMINISTRATION
man
sudo
su
who
whoami
id
groups

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
ssh-agent: a key manager that securely stores SSH private key in the RAM
ssh-agent -s: tells the ssh agent to output commands in bourne shell
ssh -T git@gitrepositorylinkssh
git clone git@gitrepolinkssh
wget
curl


#miscellaneous

##environment variables
PWD
HOME

## assignments

d = $(cat)

[abc023]
[a-c0-9]
[^abc]
\s
\S
\c{2,}{2}{2,3}
+
*
.
^
$
