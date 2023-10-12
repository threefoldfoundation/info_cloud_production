# All Trust

What if in stead of not trusting anyone, we change the paradigm and we are going to trust everyone.

The TFGrid 4.0 system is built up out of actors, each actor is implemented inside a 3bot.

Some example actors

- farming: represents selected Grid Servives which run on top of 3nodes 
- farming cooperative: a cooperative of farmers, working on behalf of many farmers, who don't want to manage their own operation
- 3node: manages one 3node and its operating system called ZOS
- mycelium node: manages a mycelium node, mycelium can be installed on deskopts, phones, ... 
- grid service: a grid service can be storage, compute, telecom, network services and can run on ZeroOS or Mycelium Node
- grid consumer: an actor who works on behalf of a consumer of services of tfgrid, and helps the user to deploy and manage solutions deployed on the grid, payments are done on behalf of user

All of these actors work together to make a super scalable network of services which can support millions (if not billions) of consumers & service providers.

## Farmers

- Invest in 3Nodes or other Mycelium based Services e.g. web gateway, telco service (5G,sms), ...
- A Farmer invested in the required hardware to run these services.
- A Farmer or Farming Cooperative will operationally run the services (set billing parameters, monitor environment, manage the networks, optionally give support, ...). Farming Cooperatives define how they distribute the margin they make to their members.
- A Farmer can actively manage his own infrastructure or become part of a Farming Cooperative.
- Farmers make profit thanks to people using their infrastructure and optionally monthly fixed farming rewards.

## Grid Services

In TFGrid 4.0 hundreds if eventually not thousands of services can be deployed inside the ecosystem of a new internet

How does it work?

- Grid Services track used capacity (e.g. bandwidth, storage, rpc requests), report this capacity to the relevant farming actor (or farming cooperative).
- The Grid Consumer can talk to any of the Grid Services directly over Mycelium Reliable Message bus. The Consumer can ask for status reports, monitoring, or can ask for deployment of a serice or ask for a service request e.g. send SMS, send email, ask AI cloud ... 
- The Farming Actor will use their flexible pricing policies to define the price for the request or deployed capacity. 
- The Farming Actor will use Mycelium Pay to request payment (my means of request for IOU)

## IOU = I Owe You

- proofs of consumption & payment
- farmers & consumers agree on the IOU (think about like a checque in the old banking days)
- farmers & consumers sign both the IOU (done automatically by the actors using Mycelium for security)
- the farmer will request the Mycelium Pay Bridge to do the payment at regular intervals e.g. once a day.
- The Mycelium Pay Bridge is implemented inside a TFGrid Guardian Circle. 
- The Mycelium Pay Bridge will safely aggregate the IUO's and ask the relevant Consumer Actor to do the payment (in future their might be the notion of escrow accounts, so Consumers need to park money before asking services with a chosen Bridge).
- Reputation of the Consumers is kept in the relevant TFGrid Guardian Circle, to make sure bad actors cannot cause harm.

## TFGrid Guardian Circle (our replace for blockchain)

- We believe in human chains, which acts and behaves as a blockchain but is directly linked to Humans rather than just a piece of code.
- A Guardian Circle is a group of minimum 9 people (max 99).
- Each person runs a 3bot who works on their behalf, so they don't have to do many tasks manually.
- The Guradian owned 3bots communicate over Mycelium which takes care of security, encryption, consensus and reliable message delivery.
- The Mycelium Concensus mechanism uses a derivate of Tendermint (see Kosmos blockchain ecosystem) to make sure that the consensus between the members is solid and done in time & space order.
- A Guardian Circle can own one or more Treasury Wallets which are wallets of money blockchains (Ethereum, Stellar), these wallets use multisignature between all signers of a Guardian Circle.
- The 3bots use VLang based DSL (Domain Specic coding Language) to describe the functionality.
- All required actions are executing using 3Script (our own scripting language, super high level and easy), these 3scripts get executed by all members of the Guardian Circle, only if each Guardian 3Node comes to the exact same conclusion the action will be executed.
- Typical actions as can be executed by a Guardian Circle
  - voting
  - roll up of IOU
  - validation of TFGrid status and auditing of capacity as provided by TFGrid
  - payments from Treasury as result of vote of roll up of IOU
  - pricing mechanism
  - billing for TfGrid Services
- If needed manual actions (checks) can be done by the humans behind a Gurdian Circle e.g. validate a price chain.
- Such a TFGrid Guardian Circle is ultra flexible, there can be millions of them and they can all work together, they can be made fully compatible with any chosen money blockchain or other financial institute.
- Its very easy for developers to extend capabilities of a Guardian Circle (alternative to smart contracts on blockchain)


