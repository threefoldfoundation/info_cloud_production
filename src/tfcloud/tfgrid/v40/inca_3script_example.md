## example for INCA token

```js
//example with 1 beneficiary addr
!incatoken.define network:'stellar' amount:'1000TFT' 
        distribution:'AAAAABBBBBCCCCCDDDDEEEE'
        description:'...'
        //, means or, + means and, this means time and tftprice needs to be done or utilization
        conditions:'AABBCCDDEEFFGGHH+EEAACCDDEEFFGGAA,00AACCDDEEFFGG00' 
        hash:'BBCCDDEEFFGGHHII' //is unique for all content of this action, serves as validation, md5 hash
        signature:''

!signature.define id:'BBCCDDEEFFGGHHII:1' //the hash is hash of the object we want to sign off on
        signature:'...'
        signature_group:'AABBEEDDAABBCC' 
!signature.define id:'BBCCDDEEFFGGHHII:2' //2nd signature
        signature:'...'
        signature_group:'AABBEEDDAABBCC' 

//example where we do split between 2 accounts
!incatoken.define network:'stellar' amount:'1000TFT' 
        distribution:'AAAAABBBBBCCCCCDDDDEEEE:20,AAAAABBBBBCCCCCDDDDEEEE:80' //sum is always 100

!incatoken.condition hash:'AABBCCDDEEFFGGHH' //is hash of all relevant fields of this action
        description:'...'
        unlock_time:'30/10/2024'

!incatoken.condition hash:'EEAACCDDEEFFGGAA' 
        code:'tft_price' //code to make it easy to organize work of consensuspool, can be automated to manual
        description:'this requires the signers to sign once TFT price is 0.1 USD'
        consensuspool:'AABBEEDDAABBCC'

!incatoken.condition hash:'00AACCDDEEFFGG00' 
        code:'node_utilization'
        params:'tfnode:563 net:mainnet3 minusage:30%' //understood by code as run on consensuspool 
        description:'automated code to check utilization of 3node over 3 months, once +30% then condition met'
        consensuspool:'AABBEEDDAABBCC'

!incatoken.consensuspool hash:'AABBEEDDAABBCC' 
        network:'stellar'
        circle:'' //one or more circles which are used to execute on the consensus
        signers:'${PUBKEY1}:2,${PUBKEY2}:5,${PUBKEY3}:4,' //${PUBKEY2} is filled in pubkey, here just placeholder
        minweight:5 //means pubkey can decide allone, 1 a 3 can together get to quorum
         
//the INCA token is uniquely identified by its hash, because this depends on all other definitions

```

