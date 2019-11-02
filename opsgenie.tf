
resource "opsgenie_user" "arya" {
  username  = "test1@testing.com"
  full_name = "Arya Stark"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "sansa" {
  username  = "test2@testing.com"
  full_name = "Sansa Stark "
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "jon" {
  username  = "test3@testing.com"
  full_name = "Jon Snow"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}


resource "opsgenie_team" "theChosen" {
  name        = "The chosen ones"
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
