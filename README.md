

# **BTC Manager**
### "Store your Bitcoin addresses! Keep track of your balances!"



## Overview
![bitcoinimg](https://en.bitcoin.it/w/images/en/c/cb/BC_Logotype.png)

### Bitcoin addresses represent a possible destination for a bitcoin payment.  They are strings of 25-35 characters encoded in a format called Base58, and consist of random digits and uppercase and lowercase letters, with the exception of the uppercase letter "O", uppercase letter "I", lowercase letter "l", and the number "0" to prevent visual ambiguity.  For example: "1CK6KHY6MHgYvmRQ4PAafKYDrg1ejbH1cE".

### Like e-mail addresses, you can send bitcoins to a person by sending bitcoins to one of their addresses. However, unlike e-mail addresses, people have many different Bitcoin addresses, often for different purposes.

### Because bitcoin addresses are case-sensitive and exact, they should be copied and pasted using the computer's clipboard wherever possible. If you hand-key a Bitcoin address, and each character is not transcribed exactly - including capitalization - the incorrect address will most likely be rejected by the Bitcoin software. You will have to check your entry and try again.


### It would be extremely difficulty to keep track of let alone memorize one's bitcoin addresses.

### BTC Manager allows a user to label, and store multiple addresses so that their pertinent information is readily accessible.

## Address Information Displayed
* Total Amount Received
* Total Amount Sent
* Total Balance
* QR Code

## Technologies Used
* **Ruby on Rails** - (full stack web application framework)
* **jQuery** - (Javascript library)
* **PostgreSQL** - (object-relational database management system)
* **Postico db clilent** - (database vizualization application)
* **Bootstrap** - (front-end framework)
* **HTML5/SCSS** - (structure and content of webpages)
* **Blockchain.info API** - (bitcoin wallet and block explorer service)
* **'HTTParty' gem** - (making HTTP GET requests with API)
* **'bcrypt' gem** - (password hashing)
* **'zeroclipboard' gem** - (copying text to clipboard)



## Aproach Taken
1. Building 'User' and 'Address' Rails Models and Controllers
2. Styling and linking Views together to create fluid site navigation
3. Integrating the Blockchain API to get live data for individual addresses
4. Importing Bootstrap
5. Utilizing zeroclipboard Ruby gem to allow for easier copying of bitcoin address to computer clipboard



### [Trello, Wireframes & ERD](https://trello.com/b/UETIoNxN/btc-manager)

## Installation Instructions

#### 1. Download or clone Repository
#### 2. In Terminal, cd into app directory
#### 3. Type 'bundle install'
#### 4. Type 'rails s'
#### 5. In web browser, navigate to: 'localhost:3000'

#### Or Simply Visit: [https://btcmanager.herokuapp.com/](https://btcmanager.herokuapp.com/)

### *Sample Bitcoin Addresses can be found here:* [https://bitinfocharts.com/top-100-richest-bitcoin-addresses.html](https://bitinfocharts.com/top-100-richest-bitcoin-addresses.html)

## Unresolved Issues
### Transaction Fees
It would helpful for users to keep a running tally of their transaction fee expenses.  Transaction fees could potentially be calculated by finding the difference in the inputs and outputs of a transaction.  However, this would be somewhat tricky and unreliable because the vin (input) for any transaction points to the output of another transaction.

Fees are an incentive provided by the user to have their transaction processed by bitcoin miners.  As the user base of Bitcoin increases, transaction fees are expected to rise significantly.  As the rate at which bitcoins are mined decreases, and transaction fees will eventually become the primary economic model under which miners run the network.  I believe that in most Bitcoin wallets and web applications, keeping track of transaction fees is disregarded in the feature set.

### Currency Conversion
I would to add a feature to allow the user to convert the displayed bitcoin balanced into the equivalent value in a fiat currency such as the US Dollar or Euro.
