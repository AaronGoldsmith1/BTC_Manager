# Bitcoin Address Manager

![bitcoinimg] (https://en.bitcoin.it/w/images/en/c/cb/BC_Logotype.png)

##Overview

### Bitcoin addresses are strings of 25-35 characters, and encoded in a format called Base58. They consist of random digits and uppercase and lowercase letters, with the exception of the uppercase letter "O", uppercase letter "I", lowercase letter "l", and the number "0" to prevent visual ambiguity.  For example:

```1CK6KHY6MHgYvmRQ4PAafKYDrg1ejbH1cE```

### Like e-mail addresses, you can send bitcoins to a person by sending bitcoins to one of their addresses. However, unlike e-mail addresses, people have many different Bitcoin addresses, often for different purposes.


 

###It would be extremely difficulty to keep track of let alone memorize one's bitcoin addresses.

### BTC Manager allows a user to label, and store multiple addresses so that their pertinent information is readily accessible.

##Address Information Displayed
* Total Amount Received
* Total Amount Sent
* Total Balance
* QR Code

##Technologies Used
* Ruby on Rails
* PostreSQL
* Bootstrap
* HTML5/SCSS
* [Blockchain.info] (blockchain.info) API
* HTTParty
* bcrypt password hashing
* Postico db clilent


##Aproach Taken
**[Trello Board] (https://trello.com/b/UETIoNxN/btc-manager)**


##Installation Instructions

####1. Download Repository
####2. In Terminal, cd into app directory
####3. Type 'bundle install'
####4. Type 'rails s'
####5. In web browser, navigate to: 'localhost:3000'

#### Or Visit: [https://btcmanager.herokuapp.com/](https://btcmanager.herokuapp.com/)

##Unresolved Issues
###Transaction Fees
Fees are an incentive provided by the user to have their transaction processed by bitcoin miners.  As the user base of Bitcoin increases, transaction fees are expected to rise significantly.  It would helpful for users to keep a running tally of their transaction fee expenses.  As the rate at which bitcoins are mined is decreases, and transaction fees will eventually become the primary economic model under which miners run the network.

Transaction fees could potentially be calculated by finding the difference in the inputs and outputs of a transaction, but this is somewhat tricky and unreliable because the vin (input) for any transaction points to the output of another transaction.

