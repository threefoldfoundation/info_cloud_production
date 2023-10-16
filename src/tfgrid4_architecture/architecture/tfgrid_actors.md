

# TFGrid main actors

A Circle actor has the capability to communicate wiht 3Nodes, which are computers running on the TFGrid.

Each 3Node has an actor inside who has as function to manage the provisioning of compute, storage and network capacity.

The 3Node actor will report back to a farming actor (see below)

```mermaid


graph TB
    subgraph Circle1 [A Circle with name *OurAdmin*]
        actor1[Actor]
    end

    subgraph 3Node1 [TFGrid 3Node]
        actor_3node1[Actor for 3Node]
        actor_3node1 .- compute1 
        actor_3node1 .- storage1
        actor_3node1 .- network1
        compute1[Compute]
        storage1[Storage]
        network1[Network] 
    end

    subgraph 3Node2 [TFGrid 3Node]
        actor_3node2[Actor for 3Node]
        actor_3node2 .- compute2 
        actor_3node2 .- storage2
        actor_3node2 .- network2
        compute2[Compute]
        storage2[Storage]
        network2[Network] 
    end

    subgraph 3Node3 [TFGrid 3Node]
        actor_3node3[Actor for 3Node]
        actor_3node3 .- network3
        actor_3node3 .- compute3 
        actor_3node3 .- storage3
        compute3[Compute]
        storage3[Storage]
        network3[Network] 
    end

    network2 .-|Mycelium P2P Encrypted Network| network1
    network2 .-network3
    network1 .- network3
    actor1 ---|3script rpc over mycelium \nreliable message bus| actor_3node1
    actor1 --- actor_3node2
    actor1 --- actor_3node3

```

## farming actors


```mermaid


graph TB
    subgraph Circle1 [A Circle with name *OurAdmin*]
        actor1[Actor]
    end

    subgraph 3Node1 [TFGrid 3Node]
        actor_3node1[Actor for 3Node]
        actor_3node1 .- compute1 
        actor_3node1 .- storage1
        actor_3node1 .- network1
        compute1[Compute]
        storage1[Storage]
        network1[Network] 
    end

    subgraph 3Node2 [TFGrid 3Node]
        actor_3node2[Actor for 3Node]
        actor_3node2 .- compute2 
        actor_3node2 .- storage2
        actor_3node2 .- network2
        compute2[Compute]
        storage2[Storage]
        network2[Network] 
    end

    subgraph FarmingActor [Farming Actor]
        farmingactor[Actor for Farmer]
        
    end

    actor1 ---|3script rpc over mycelium \nreliable message bus| actor_3node1
    actor1 --- actor_3node2
    actor_3node1 -->|capacity utilization\nand availability| farmingactor
    actor_3node2 --> farmingactor
    actor1 -->|ask information of availability\nby means of 3script| farmingactor

```

The Farming Actor will stor information of utilization & capacity in an internal DB (can be queried), so that every actor can find out how much capacity there is, is being used...

The farming actor will also do monitoring.