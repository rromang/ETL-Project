# ETL-Project

## ETL Project: UFO Sighting in the US In 2016 Related to Fireball Sightings and Airport/Military Bases Proximity

### Team Members: Bitty, Kellen and Rosa

#### Dataset to be used:
- UFO Sightings in US: https://www.kaggle.com/salmanfaroz/ufo-sightings-in-the-us
- Fireballs (Sightings): https://www.kaggle.com/nasa/fireballs
- Airport Codes: https://datahub.io/core/airport-codes
- Military Bases: https://public.opendatasoft.com/explore/dataset/military-bases/table/
* Some geolocation information will be obtained Google Maps API.

#### Type of transformation needed:
- Clean: drop null, drop not needed dates/columns
- Join: Location, sightings
- Production Database: Relational (PostgreSQL)
- UFO sightings, Fireball sightings, Airport Location and Military Bases Location
