



## Actor DNA

Is knowledge to teach actors how to deal with incoming requests.

Its a collection of Recipes which are the registration of knowledge as is needed for the Actor.

### How to give knowledge to an Actor

The Actor DSL is a language allowing an expert to define Actor Recipe's which are teachings of knowledge around specific topic. E.g. an Actor can learn how to deal with a customer if a customer has an issue and is looking for support.

The Actor DSL will use the Model DSL and System DSL to define the knowledge in.

Think about it like a recipe for a cook in a kitchen.

## Circle


- A group of people working together on a project (set of tasks, milestones, governance area, IT environment, …).
- Each Circle has a unique id, called CID = Circle ID
- Data models are often stored in mem and linked to a circle.

## Actors & Circles

Actors are linked to Circles.

One actor can never operate in an external circle.

Actors can send messages to other actors of other circles, this happens by default using 3 script messages.

## 3script messages

Each Circle Actor has a message queue, and incoming messages (3script) are parsed to actions which are given to right components in crystallib or other v library.

