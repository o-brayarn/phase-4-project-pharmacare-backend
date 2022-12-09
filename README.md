# **PharmaCare API**

### _By Brayarn Oduor_

This README would normally document whatever steps are necessary to get the
application up and running.

## **Description**

Pharmacare API is a RESTful API that facilitates the creation of an account, retrieval of available pharmacies and a catalogue of their available medicines, creation, updating, and deletion of orders made.

## Initial login credentials

```json
{
  "email": "admin@admin.com",
  "password": "password"
}
```

# Setup Requirements

    - Clone the repo => $ git clone git@github.com:o-brayarn/phase-4-project-pharmacare-backend.git
    - Ruby v.2.7.4
    - PostgreSQL
    - Thunder Client Extension or Postman (to test the API)
    - Railway.app or render cli to deploy the API

# Setup Installation

        After cloning the repo, run the following commands:
        - cd <folder-directory>
        - $ sudo -u postgres createuser [new_user]
        - sudo -u postgres psql postgres=# \password [new_user]

       * Open Postman or Thunder Client to try out the API endpoints

       * Deploy to railway.app or render

# Endpoints

- Root endpoint:
  - [https://localhost:3000](https://localhost:3000)

> POST

`/register`

- Create a new user

```json
{
  {
    "name": "string",
    "email": "string",
    "location": "string",
    "phone_number": "string",
    "password": "string",
    "password_confirmation": "string"
  }
}
```

> POST

`/login`

- Create a session

```json
{
  "email": "string",
  "password": "string"
}
```

> GET

`/pharmacies`

```json
[
  {
    "name": "string",
    "location": "string",
    "email": "string",
    "address": "string",
    "phone_number": "string"
  },
 {
    "name": "string",
    "location": "string",
    "email": "string",
    "address": "string",
    "phone_number": "string"
  },
  ....
]
```

> GET

`/pharmacies/{:id}`

```json
{
  "name": "Good Kind",
  "location": "Nairobi CBD",
  "email": "goodkind@gmail.com",
  "address": "234 Mama Ngina Street",
  "medicines": [
    {
      "name": "Ibuprofen",
      "image_url": "https://bit.ly/3Fa0tJp",
      "description": "Ibuprofen is a nonsteroidal anti-inflammatory drug that is used for treating pain, fever, and inflammation. This includes painful menstrual periods, migraines, and rheumatoid arthritis."
    }
  ]
}
```

> GET

Get a list of users

`/users`

```json
[
  {
    "name": "admin",
    "email": "admin@admin.com",
    "location": "Mombasa",
    "phone_number": "1234356576",
    "password_digest": "$2a$12$/aeTTda4ortY9vWWm/ofcup04ZP6axzPxLIys7cwa3NzRb0CSmaG2"
  },
  {
    "name": "Willy Wilson",
    "email": "willonwill@wheels.com",
    "location": "Nairobi",
    "phone_number": "0123456789",
    "password_digest": "$2a$12$SdxyJlirscqPXc5hRXDZIOSoqOHBCbXpdYYaeNxA9u0kP9S1tp092"
  },
  ....
]
```

> GET

`/pharmacies/{:id}/medicines`

```json
{
  "name": "Adderall",
  "description": "Adderall is used to treat attention deficit hyperactivity disorder (ADHD) and narcolepsy",
  "image_url": "https://bit.ly/3P7uyhx"
}
```

## **_Tools Used_**

- **main:** _ruby on rails, postgresql_
- **other dependencies:** _bcrypt & active_model_serializers_

## Known Bugs

- No known bugs to this point. However, deploying the API arises issues.

### Postgres fix

```
$ sudo apt install postgresql postgresql-contrib libpq-dev
```

## License

MIT License

Copyright (c) 2022 Brayarn Oduor

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE

## Support and Contact details

To make a contribution to the code used or any suggestions you can <a href="brayarn.oduor@student.moringaschool.com">Send me a Mail </a>.
