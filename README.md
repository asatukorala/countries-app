# Countries App

# :computer: [Click here](https://murmuring-river-76090.herokuapp.com/) to see my live project!

# :information_source: About 
- An app where users login allowing you to add different countries. A compare option is included. 

## High Level Design
I'm going with Countries App. It will have tables for users and countries. 

Each country will feature image, capital, area, population. There could possibly be latitude and longitude information for each capital. 

I will use Model View Controller (MVC) Framework to design and implement the app. The views folder will provide different browser interfaces for the user. The views will then communicate with the Controller via Ruby functions. The controller will provide functions of creating, reading, updating and deleting and will interact with the database via the models. 

I will use the Food Truck App as the guide. 
- Define Database tables (countries and users).
- Define SQL operations.
- Create views.
    - Countries (add, edit, delete, display)
    - Users (register)
    - Sessions (login)
- Create controllers to support views (Add Ruby functions to communicate with views and Database). 

Initially develop in localhost and debug. Once it functions properly, post it to the Internet. 

## Technical Notes
[Click here](https://github.com/asatukorala/countries-app) to read code on GitHub. 

Wireframes of Countries App: 
![wireframes](https://github.com/asatukorala/countries-app/blob/main/wireframes.JPG?raw=true)

Trello Board 13/09:
![trelloboard1309](https://github.com/asatukorala/countries-app/blob/main/Trello%20Board.jpg?raw=true)

Trello Board 14/09 morning:
![trelloboard1409a](https://github.com/asatukorala/countries-app/blob/main/Trello%20Board%201409%20Morning.jpg?raw=true)

Trello Board 14/09 night:
![trelloboard1409b](https://github.com/asatukorala/countries-app/blob/main/Trello%20Board%201409%20Night.jpg?raw=true)

Note: I didn't include design diagrams due to time constraints and as I believe the wireframes cover it. 

# :rocket: Cool tech
This CRUD app utilises HTML content with CSS layout. Ruby code is used with an SQL database in the Sinatra framework. 

# :anguished: Bugs to fix :
I based this app on the Food Truck App and many errors came due to me mistakenly typing information based on food or general mistakes I made. Time was spent debugging errors that came as a reesult of this. Some of these errors were easier to debug than others. There were also some bugs which weren't error messages, but it was doing nothing or the wrong task. 

Writing the Compare option was more difficult than expected, with many bugs coming as a result of it. These bugs resulted in the Compare option having less features than I intended.

# :persevere: Lessons learnt
Have better goals to finish sections earlier.

# :white_check_mark: Future features
- More CSS content to be better presented including having text boxes aligned.
- Formatting the large numbers of area and population to display better.
- Have Compare results come on the same page.
- Have a dropdown option when selecting countries to compare.
- Have an area comparison.
- Calculate percentage differences in the Compare option. 
- Find a way to insert a Patch request.
