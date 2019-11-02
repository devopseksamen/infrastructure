
resource "opsgenie_user" "arya" {
  username  = "thanh_t@hotmail.com"
  full_name = "Arya Stark"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "sansa" {
  username  = "gulasiater@hotmail.com"
  full_name = "Sansa Stark "
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "jon" {
  username  = "gullgravern@gmail.com"
  full_name = "Jon Snow"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}


resource "opsgenie_team" "theOne" {
  name        = "No one above"
  description = "This team deals with all the things"

  member {
    id   = "${opsgenie_user.arya.id}"
    role = "admin"
  }

  member {
    id   = "${opsgenie_user.sansa.id}"
    role = "user"
  }
  
    member {
    id   = "${opsgenie_user.jon.id}"
    role = "user"
  }
}
