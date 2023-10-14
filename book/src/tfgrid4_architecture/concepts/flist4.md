# Flist 4

Our latest version of flists.

The metadata of a filesystem is in SQLITE DB format and can easily be manipulated.
The data are deduped parts of files, which are stored on ZDB compatible backend (in future also S3 backends)

There is a command line written in rust which allows us to

- merge flist (TODO)
- import flist (dir to flist)
- export flist (flist to dir)

remarks

- the flist can be stored on any S3 or HTTP compatible webserver
- ZOS knows how to download the flist and mount the flist as filesystem and give to a virtual machine.


!!tree.def_set name:'flist4,flist'