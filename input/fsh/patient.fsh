// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Alias:  $ChCorePractitioner  = http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner
Alias:  $SCT                 = http://snomed.info/sct   


Profile: MyPatient
Parent: Patient
Id: my-patient
Title: "My Patient"
Description: "Profile of the Patient resource"
* name 1..* MS
* birthDate 1..1
* generalPractitioner only Reference(FishDoctor)
* extension contains FishSpecies named species 0..1


// https://www.hl7.org/fhir/extensibility.html
Extension: FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "Extension to specify the species of the fish"
* value[x] only CodeableConcept
* valueCodeableConcept from FishSpecies (extensible)

ValueSet: FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "Codes describing various species of fish, taken from SNOMED CT"
* codes from system $SCT where concept is-a #90580008 "Fish (organism)"

// https://www.hl7.org/fhir/extensibility.html
Extension: SmartingPain
Id: smarting-pain
Title: "Smarting pain"
Description: "Extension to specify the smarting pain"
* value[x] only CodeableConcept
* valueCodeableConcept from SmartingPain

ValueSet: SmartingPain
Id: smarting-pain
Title: "Smarting pain"
Description: "Codes describing various Smarting pain, taken from SNOMED CT"
* codes from system $SCT where concept is-a #103013007 "Smarting pain (finding)"


Instance: PatientExample
InstanceOf: MyPatient
Usage: #example
Title: "James Pond"
Description: "Example of a patient with a license to krill"
* name
  * given[0] = "James"
  * family = "Pond"
* birthDate = 1960-04-25
* generalPractitioner = Reference(DoctorShark)
* extension[species].valueCodeableConcept = $SCT#740008 "Ophichthus ophis"

Instance: PatientExample-2
InstanceOf: MyPatient
Usage: #example
Title: "Shorty Koi-Fish"
Description: "Seconde example of a patient with a license to krill"
* name
  * given[0] = "Shorty"
  * family = "Koi-Fish"
* birthDate = 1970-05-25
* generalPractitioner = Reference(DoctorShark)
* extension[species].valueCodeableConcept = $SCT#740008 "Ophichthus ophis"
