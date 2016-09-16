# LobbyTracker
A project by [Graham Turner](http://www.tgturner.com)

LobbyTracker is a personal project built during an afternoon Hack-A-Thon. Participants were tasked with using data from [SF OpenData](https://data.sfgov.org/) to build a useful application for citizens.

I decided to use information about lobbyist meetings with city officials as a way to hold government employees accountable. The project connects four different data sets, to paint a picture of lobbyist activity.
- https://data.sfgov.org/City-Management-and-Ethics/Lobbyist-Activity-Contacts-of-Public-Officials/hr5m-xnxc
- https://data.sfgov.org/City-Management-and-Ethics/Lobbyist-Activity-Political-Contributions/sa8r-purn
- https://data.sfgov.org/City-Management-and-Ethics/Lobbyist-Activity-Payments-Promised-By-Clients/s2fy-y3my
- https://data.sfgov.org/City-Management-and-Ethics/Lobbyist-Directory/exbu-si57

All information is accessed directly from the API, not persisted in the database. This presented a unique challenge considering I was not able to utilize the convenience of ActiveRecord and was forced to build my own ActiveRecord style tools.

LobbyTracker was voted as best overall application, best use of API, most useful for users, and best in architecture design by Hack-A-Thon participants.

Checkout the deployed app on [Heroku](https://lit-atoll-92479.herokuapp.com/)
If you don't know the name of any San Francisco City Officials, try London Breed.
