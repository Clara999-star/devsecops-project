package main

deny[msg] {
  input.kind == "Pod"
  input.spec.containers[_].securityContext.runAsUser == 0
  msg = "Le container tourne en root (interdit)"
}
