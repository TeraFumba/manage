# manage
PHP application using Laravel, to allow for user login, and managing a database of registered vehicles and
their owners.
A rest API to allow the information to be accessed via a third party.

USER LOGIN

The user login screen is shown to a non-logged in user when they browse to the project. It contains a
form requiring a user to enter their username and password, with a login button to perform the login. These
credentials will be validated against a user table in the database.
If the user enters invalid login credentials, they will be prompted with an error message, and required to enter
their details again.
Once logged in, the user will be redirected to the welcome screen.

WELCOME SCREEN

Once the user is logged in, they will be shown a welcome message in the format “Welcome {firstname}
{lastname}”.
The user will be shown a list of previously registered vehicles, and the ability to add, view, edit or delete any of
them.
The following information should be shown in the vehicle list:
 -Owner name
 -Vehicle manufacturer & type
 -Date registered
  
ADDING A VEHICLE

Clicking through to add a new vehicle, the user must enter the following information:
- Owner Information
  - First & Last name
  - Contact number
  - Email address
- Vehicle Information
  - Manufacturer (e.g. Volkswagon)
  - Type (e.g. Polo)
  - Year
  - Colour
  - Mileage
  
  VIEWING A VEHICLE
  
This screen will allow the user to view and print the vehicle information captured .

EDITING A VEHICLE

The user should be able to edit all information captured.

DELETING A VEHICLE

When deleting a vehicle, the system provides confirmation to the user to prevent accidental deletes.
Vehicles will be soft-deleted.
 
RESTFUL API 
A simple RESTFul API to perform simple CRUD operations on a vehicle.
  - allows the client to specify the response type as XML or JSON (default).
  - secured API from public access
  
  
