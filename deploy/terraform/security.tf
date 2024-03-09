resource "nexus_security_user" "craigmiller160" {
  userid    = data.onepassword_item.nexus_craigmiller.section[0].field[0].value
  firstname = "Craig"
  lastname  = "Miller"
  email     = "craigmiller160@gmail.com"
  password  = data.onepassword_item.nexus_craigmiller.password
  roles     = ["nx-admin", "nx-anonymous"]
  status    = "active"
}

resource "nexus_security_realms" "realms" {
  active = [
    "NexusAuthenticatingRealm",
    "NexusAuthorizingRealm",
    "NpmToken",
    "DockerToken"
  ]
}