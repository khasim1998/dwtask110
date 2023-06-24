%dw 2.0
import * from dw::core::Arrays
/*
Joins two arrays of objects by a given ID criteria.
join returns an array all the left items, merged by ID with any right items that exist.
This example shows how join behaves. Notice that the output only includes objects where the
values of the input user.id and product.ownerId match. The function includes the "l" and "r"
keys in the output
*/
var users = [
  {
    "id": "1",
    "name": "Mariano"
  },
  {
    "id": "2",
    "name": "Leandro"
  },
  {
    "id": "3",
    "name": "Julian"
  },
  {
    "id": "5",
    "name": "Julian"
  }
]
var products = [
  {
    "ownerId": "1",
    "name": "Julian"
  },
  {
    "ownerId": "1",
    "name": "BAT"
  },
  {
    "ownerId": "2",
    "name": "DataSense"
  },
  {
    "ownerId": "4",
    "name": "SmartConnectors"
  }
]
output application/json
---
join(users, products, (user) -> user.name, (product) -> product.name)
