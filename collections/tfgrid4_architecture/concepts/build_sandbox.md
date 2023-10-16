# Build Sandbox

We build in a chroot environment, which is driven by SAL in V Crystallib.

The Chroot environment is run like an OCI compatible container.

## process how to build

- build inside the sandbox
- the result sandbox gets cleaned up (remove non wanted files)
- export the sandbox to flist4 format
- store the flist4 format on chosen S3 server or tfhub server
- store the fileparts to chosen ZDB (future S3 server)

Once 

## OCI = container specification

Is a JSON spec in how to deploy a container, is low level but we have SAL for it in V.


!!tree.def_set name:'sandbox,build_sandbox,oci' description:'sandbox in which builds are done.'

