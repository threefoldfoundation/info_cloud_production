
## DSL's

A Domain Specific Language.
We believe a DSL's need to be human readable and easy to expand.

We use 3script and vlang to define our DSL's in.

There are different types of DSLs

- Model DSL = manage structured data, in a consistent way (Vlang & 3script)
    - the memory of our digital world, uses rootobjects at the base
- System DSL = translate from a specific system/machine/tool to our vlang language (Vlang only)
  - is a tool
  - e.g. docker.machine_start would be interface to docker to get a machine started
  - e.g. smtp.message_send is sending message in specific way
- World DSL = translate from a world usecase (can be tech or non tech), to the specific System / Model DSL (Vlang & 3script)
  - is like an abstraction layer of the world, each actionr results in a recipe which is using the different DSL's
  - e.g. cloud.machine_start would be world dsl, does not have to know about docker or KVM
  - e.g. communication.message_send would be independent of implementation e.g. mail, sms, ... 
- Circle DSL 
  - Each Circle can expose parts of a world DSL, rights can be defined on that world DSL.
  - e.g. Admin's of Circle can do cloud.* but not a normal member, e.g. Consensus of Members needed to do ...
  - Each Circle has 1 actor, this actor gets incoming messages (based on 3script) and will look for the right World DSL to execute on.
  - Each Circle has its own memory structure in which the data can be kept, this data is organize din such a way that only the circle actor can access and modify the data.

### Model DSL 

Is a language (3script or V) which allows actors to manipulate a data model.
All data is organized following rootobjects, the rootobjects can be loaded in memory and linked to a circle.

- A root object is a complex data type, each rootobject as a unique ID (OID - Object ID).
- Each rootobject is linked to a Circle.
- 3Script or VLang can be used to manipulate (CREATE, DELETE, UPDATE) the Root Objects.

Each RootObject has a factory through which we can do our crud actions

- ingest 3script
- get, create, delete, update (will return copy)
- object to 3script
- ...

#### Example root objects

- User
- Contact
- Event (calendar)
- Story
- Milestone
- …

### System DSL = SAL

SAL = System Abstraction Layer

Is like set of tools to manage a system e.g. manage virtual machines in a computer. The language used to manipulate a system is a DSL by itself but with specific purpose.

SAL’s DON’T keep state, they are a tool, it's a language to be able to automate or work with systems.

Examples would be

- docker.container.stop
- docker.container.create

### World DSL = WAL

WAL = World Abstraction Layer

Make a language which is independent of the physical implementation, will call the underlying model and system DSL's



!!def_define name:'dsl,system_dsl,sal,dal,wal,model_dsl,actor_dsl'