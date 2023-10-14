# Build Environment In OCI Sandbox

```js
!!tree.circle_select name:'3bot'

!story.define
	id:'***'
    name:'oci_container'
    project:'3bot'
	title:'Build Environment In OCI Sandbox'
    priority:'urgent'
    deadline:'+15d'
    owner:'jan'
    assignment:'maxux,jan'
    milestone:'3bot_v05'
	description:'
        see specs in info_cloud_production repo
        '
```

```js
!task.define id:'***' story:'oci_container'
	title:'initial sandbox implementation in V'
    priority:'urgent' assignment:'maxux' deadline:'+1d' effort_remaining:'10'
    percent_done:'0%' state:'active'
	description: '
        see V crystalib
        lets proof the concept by installing e.g. caddy in such a sandbox        
        '

```

## Tasks

```js
!task.define id:'***' story:'oci_container'
	title:'initial sandbox implementation in V'
    priority:'urgent' assignment:'maxux' deadline:'+1d' effort_remaining:'10'
    percent_done:'0%' state:'active'
	description:'
        see V crystalib
        lets proof the concept by installing e.g. caddy in such a sandbox
        '
```

```js
!task.define title:'export result to new style flist & run in example'
    id:'***' story:'oci_container' percent_done:'0%' state:'new'
    priority:'' assignment:'maxux' deadline:'' effort_remaining:'4'
	description:'
        - make sure we have good documentation
        - can build flist tool, know where to get it
        - run local zdb/webserver in tmux as backend for this flist operation
        - mount the flist new sandox
        - start this sandbox in tmux using V
        - all as example
        '
```

## Requirements

```js

!requirement.define title:'documentation good enough, kristof signed off.' 
	id:'***' story:'oci_container' description: ''

!requirement.define title:'sandboxing example in crystallib, example folder' 
	id:'***' story:'oci_container' description: ''

!requirement.define title:'example how to use tmux with it' 
	id:'***' story:'oci_container' description: ''



```