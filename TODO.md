Next steps:

- add price

Low priority:

- Move json in UsersController to UserSerializer
- Create Category table
- Rewrite backend route resources and controllers
- Rewrite backend serializers
- Rewrite user serializer to grab only last open order ? otherwise sending large
  amounts of data - all user's orders
  - only allow _one_ uncomplete order at a time
- add Product show pages
- would be cool to add URL query ?API_TOKEN=<token>

components:

- App

  - Header
    - Login / Hello
    - user details if logged in
    - Checkout link
  - Main

    - "/shop"
      - NavLinks:
        - "/shop/:category"
          - Category container
            - Product cards
    - "/user/:id"
    - "/order/:id"

    - Cart
      - Cart link
      - OrderItems

  - Nav (random links)

JWT does nothing.
All info you pass with it can be immediately decrypted.
So never send passwords or anything.

The only thing it does do is
{
"id": 1, #--> seen by the entire world
"secret_signature": "1234"
}

The last bit (containing the secret) apparently can't be read and only that verifies
after it's successfully decoded that the token did indeed originate from the server.
So the JWT is initally sent to the client/browser on login or signup, and saved in
the browser, then sent back to the server with each subsequent GET, PATCH and DELETE request.
Also you can add expiry dates to tokens.
