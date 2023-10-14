

## Circle + Actor

```mermaid


graph TB
    user1[Member of Circle OurAdmin] .->|3script\ne.g. through chat| actor1
    subgraph Circle1 [A Circle with name *OurAdmin*]
        actor1[Actor]
        modeldsl[Model DSL]
        worlddsl[World DSL]
        systemdsl[System DSL]
        modeldb[Actor Mem DB]
        actor1-->worlddsl
        worlddsl-->modeldsl
        modeldsl-->modeldb
        worlddsl-->systemdsl
    end


```

A Circle has a main actor which will have recipe's calling world DLS based on context.

The World DSL abstracts access to model dsl as well as system dsl.

The user which is a member of the circle, communicate to the circle actor in this case using chat and 3script.

## Circle DB + Backend

All structured data is stored in actor memory db and version controlled optionally through quantum safe storage system or a git based system.

```mermaid
graph TB
    subgraph Circle1 [A Circle with name *OurAdmin*]
        actor1[Actor]
        modeldsl[Model DSL]
        worlddsl[World DSL]
        systemdsl[System DSL]
        modeldb[Actor Mem DB]
        actor1-->worlddsl
        worlddsl-->modeldsl
        modeldsl-->modeldb
        worlddsl-->systemdsl
    end

    subgraph GitSystem1 [GitSystem 1]
        git1[version controlled storage of <br>structured data and content]
    end

    subgraph GitSystem2 [GitSystem 2]
        git2[version controlled storage of <br>structured data and content]
    end

    modeldb -->|git over mycelium| git1
    modeldb -->|git over mycelium| git2
    

```

The redundant git stor at backend makes sure data data cannot be lost, multiple actors can work together, full version control is being achieved

Mycelium is our secure P2P network.


```mermaid
graph TB
    subgraph Circle1 [Circle 1]
        actor1[Actor 1]
        modeldb[Actor Mem DB]
    end
    subgraph Circle2 [Circle 1]
        actor2[Actor 2]
        modeldb2[Actor Mem DB]
    end

    subgraph GitSystem1 [GitSystem 1]
        git1[version controlled storage of <br>structured data and content]
    end

    subgraph GitSystem2 [GitSystem 2]
        git2[version controlled storage of <br>structured data and content]
    end

    modeldb -->|git over mycelium| git1
    modeldb -->|git over mycelium| git2
    modeldb2 -->|git over mycelium| git1
    modeldb2 -->|git over mycelium| git2
    actor1 <--> actor2
    

```


