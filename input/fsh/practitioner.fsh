Profile: FishDoctor
Parent: $ChCorePractitioner
Id: fish-doctor
Title: "Fish Doctor"
Description: "Profile of the Practitioner resource"
* . ^short = "Fish doctor"
* name 1..
  * given 1..
  * family 1..


Instance: DoctorShark
InstanceOf: FishDoctor
Usage: #example
Title: "Doctor Shark"
Description: "Example of a practitioner specialising as a fish doctor"
* name
  * given[+] = "Peter"
  * given[+] = "Fishbone"
  * family = "Shark"


Instance: Nizar
InstanceOf: FishDoctor
Usage: #example
Title: "Doctor Nizar"
Description: "Seconde example of a practitioner specialising as a fish doctor"
* name
  * given[+] = "Nizar"
  * family = "Ben Salem"