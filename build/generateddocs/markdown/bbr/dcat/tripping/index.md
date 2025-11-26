
# Example for a kayak trip dataset (Model)

`geonovum-labs.bbr.dcat.tripping` *v0.1*

A building block to show semantic uplift from dataset definition to schema.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### kayak trip datamodel
An example kayak trip datamodel.
#### ttl
```ttl
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix schema: <http://schema.org/> .
@prefix geo: <http://www.opengis.net/ont/geosparql#> .
@prefix ex: <http://example.org/ontology/> .

# --- Classes (Tables) ---

ex:BoatType
    rdf:type rdfs:Class ;
    rdfs:label "Boat Type" ;
    rdfs:comment "Represents a specific type of boat used for trips." .

ex:PointOfInterest
    rdf:type rdfs:Class ;
    rdfs:label "Point of Interest (POI)" ;
    rdfs:comment "A location of interest that can be visited on a trip." ;
    rdfs:subClassOf geo:Feature . # Inherits from GeoSPARQL Feature

ex:KayakTrip
    rdf:type rdfs:Class ;
    rdfs:label "Kayak Trip" ;
    rdfs:comment "A defined route or journey taken by kayak." ;
    rdfs:subClassOf geo:Feature . # Inherits from GeoSPARQL Feature

ex:Visit
    rdf:type rdfs:Class ;
    rdfs:label "POI Visit" ;
    rdfs:comment "Represents the relationship of a POI being visited during a specific Kayak Trip." .

# --- Datatype Properties (Columns) ---
# Properties that link a resource to a literal value (TEXT, INTEGER, etc.)

# BoatType Properties
ex:boatID
    rdf:type rdf:Property ;
    rdfs:label "Boat ID" ;
    rdfs:domain ex:BoatType ;
    rdfs:range xsd:integer .

ex:boatName
    rdf:type rdf:Property ;
    rdfs:label "Boat Name" ;
    rdfs:domain ex:BoatType ;
    rdfs:range xsd:string .

ex:category
    rdf:type rdf:Property ;
    rdfs:label "Category" ;
    rdfs:domain ex:BoatType ;
    rdfs:range xsd:string .

ex:description
    rdf:type rdf:Property ;
    rdfs:label "Description" ;
    rdfs:domain [ rdf:type rdfs:Class ;
                  rdfs:unionOf (ex:BoatType ex:KayakTrip) # Used by multiple classes
                ] ;
    rdfs:range xsd:string .

ex:brand
    rdf:type rdf:Property ;
    rdfs:label "Brand" ;
    rdfs:domain ex:BoatType ;
    rdfs:range xsd:string .

# PointOfInterest Properties
ex:poiID
    rdf:type rdf:Property ;
    rdfs:label "POI ID" ;
    rdfs:domain ex:PointOfInterest ;
    rdfs:range xsd:integer .

ex:poiName
    rdf:type rdf:Property ;
    rdfs:label "POI Name" ;
    rdfs:domain ex:PointOfInterest ;
    rdfs:range xsd:string .

ex:poiType
    rdf:type rdf:Property ;
    rdfs:label "POI Type" ;
    rdfs:domain ex:PointOfInterest ;
    rdfs:range xsd:string .
    
# KayakTrip Properties
ex:tripName
    rdf:type rdf:Property ;
    rdfs:label "Trip Name" ;
    rdfs:domain ex:KayakTrip ;
    rdfs:range xsd:string .

ex:comment
    rdf:type rdf:Property ;
    rdfs:label "Comment" ;
    rdfs:domain ex:KayakTrip ;
    rdfs:range xsd:string .

ex:source
    rdf:type rdf:Property ;
    rdfs:label "Source" ;
    rdfs:domain ex:KayakTrip ;
    rdfs:range xsd:string .

ex:tripType
    rdf:type rdf:Property ;
    rdfs:label "Trip Type" ;
    rdfs:domain ex:KayakTrip ;
    rdfs:range xsd:string .

# --- Geospatial Properties ---

ex:hasPointGeometry
    rdf:type geo:GeometryProperty ;
    rdfs:label "has Point Geometry" ;
    rdfs:domain ex:PointOfInterest ;
    rdfs:range geo:Geometry . # Represents the 'geom POINT' column in 'poi'

ex:hasMultiLineGeometry
    rdf:type geo:GeometryProperty ;
    rdfs:label "has MultiLineString Geometry" ;
    rdfs:domain ex:KayakTrip ;
    rdfs:range geo:Geometry . # Represents the 'geom MULTILINESTRING' column in 'kayak_trips'

# --- Object Properties (Foreign Keys) ---
# Properties that link a resource to another resource

# FK from kayak_trips to boat_type
ex:usesBoatType
    rdf:type rdf:Property ;
    rdfs:label "uses boat type" ;
    rdfs:comment "Links a Kayak Trip to the type of boat used." ;
    rdfs:domain ex:KayakTrip ;
    rdfs:range ex:BoatType . # References boat_type(fid)

# FK from pois_visited to poi
ex:visitsPOI
    rdf:type rdf:Property ;
    rdfs:label "visits POI" ;
    rdfs:comment "Links a POI Visit record to the specific Point of Interest." ;
    rdfs:domain ex:Visit ;
    rdfs:range ex:PointOfInterest . # References poi(fid)

# FK from pois_visited to kayak_trips
ex:partOfTrip
    rdf:type rdf:Property ;
    rdfs:label "part of trip" ;
    rdfs:comment "Links a POI Visit record to the Kayak Trip during which the visit occurred." ;
    rdfs:domain ex:Visit ;
    rdfs:range ex:KayakTrip . # References kayak_trips(fid)
```


### example trip
An example kayak trip
#### json
```json
{
  "boat_types": [
    {
      "fid": 1,
      "boat_id": 1,
      "boat_name": "Touring Kayak 'Swift'",
      "category": "Sea/Touring",
      "description": "Fast and stable kayak for long trips.",
      "brand": "OceanPro"
    },
    {
      "fid": 2,
      "boat_id": 2,
      "boat_name": "Sit-on-top 'Rental'",
      "category": "Recreational",
      "description": "Simple and stable for easy use.",
      "brand": "WaterFun"
    }
  ],
  "pois": [
    {
      "fid": 10,
      "poi_id": 1001,
      "naam": "Old Lighthouse Ruin",
      "type": "Historic Landmark",
      "geom": {
        "type": "Point",
        "coordinates": [4.90, 52.35]
      }
    },
    {
      "fid": 11,
      "poi_id": 1002,
      "naam": "Seal Resting Spot",
      "type": "Wildlife Observation",
      "geom": {
        "type": "Point",
        "coordinates": [4.88, 52.30]
      }
    }
  ],
  "kayak_trips": [
    {
      "fid": 101,
      "name": "Coastal Explorer Day 1",
      "cmt": "Perfect weather for a paddle.",
      "desc": "Route covering the eastern bay area.",
      "src": "GPS Logger 2025-08-15",
      "type": "Expedition",
      "boat_type": 1, 
      "geom": {
        "type": "MultiLineString",
        "coordinates": [
          [
            [4.89, 52.37],
            [4.88, 52.36],
            [4.87, 52.35]
          ]
        ]
      }
    }
  ],
  "pois_visited": [
    {
      "fid": 50,
      "poi_id": 10, 
      "trip_id": 101 
    },
    {
      "fid": 51,
      "poi_id": 11,
      "trip_id": 101
    }
  ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/tripping/context.jsonld",
  "boat_types": [
    {
      "fid": 1,
      "boat_id": 1,
      "boat_name": "Touring Kayak 'Swift'",
      "category": "Sea/Touring",
      "description": "Fast and stable kayak for long trips.",
      "brand": "OceanPro"
    },
    {
      "fid": 2,
      "boat_id": 2,
      "boat_name": "Sit-on-top 'Rental'",
      "category": "Recreational",
      "description": "Simple and stable for easy use.",
      "brand": "WaterFun"
    }
  ],
  "pois": [
    {
      "fid": 10,
      "poi_id": 1001,
      "naam": "Old Lighthouse Ruin",
      "type": "Historic Landmark",
      "geom": {
        "type": "Point",
        "coordinates": [
          4.9,
          52.35
        ]
      }
    },
    {
      "fid": 11,
      "poi_id": 1002,
      "naam": "Seal Resting Spot",
      "type": "Wildlife Observation",
      "geom": {
        "type": "Point",
        "coordinates": [
          4.88,
          52.3
        ]
      }
    }
  ],
  "kayak_trips": [
    {
      "fid": 101,
      "name": "Coastal Explorer Day 1",
      "cmt": "Perfect weather for a paddle.",
      "desc": "Route covering the eastern bay area.",
      "src": "GPS Logger 2025-08-15",
      "type": "Expedition",
      "boat_type": 1,
      "geom": {
        "type": "MultiLineString",
        "coordinates": [
          [
            [
              4.89,
              52.37
            ],
            [
              4.88,
              52.36
            ],
            [
              4.87,
              52.35
            ]
          ]
        ]
      }
    }
  ],
  "pois_visited": [
    {
      "fid": 50,
      "poi_id": 10,
      "trip_id": 101
    },
    {
      "fid": 51,
      "poi_id": 11,
      "trip_id": 101
    }
  ]
}
```

#### ttl
```ttl


```

## Schema

```yaml
$schema: http://json-schema.org/draft-07/schema#
$id: http://example.org/tripping-db-schema.json
title: Tripping Database Schema
description: JSON Schema representing the four tables (boat_type, poi, kayak_trips,
  pois_visited) of the Tripping Database.
type: object
properties:
  boat_type:
    type: array
    items:
      $ref: '#/definitions/BoatType'
  poi:
    type: array
    items:
      $ref: '#/definitions/POI'
  kayak_trips:
    type: array
    items:
      $ref: '#/definitions/KayakTrip'
  pois_visited:
    type: array
    items:
      $ref: '#/definitions/POIVisited'
required:
- boat_type
- poi
- kayak_trips
- pois_visited
definitions:
  BoatType:
    title: Boat Type
    type: object
    properties:
      fid:
        description: Primary Key (INTEGER, NOT NULL, AUTOINCREMENT)
        type: integer
      boat_id:
        description: MEDIUMINT
        type: integer
      boat_name:
        description: TEXT(50)
        type: string
        maxLength: 50
      category:
        description: TEXT(50)
        type: string
        maxLength: 50
        x-jsonld-id: http://example.org/ontology/category
      description:
        description: TEXT(50)
        type: string
        maxLength: 50
        x-jsonld-id: http://example.org/ontology/description
      brand:
        description: TEXT(50)
        type: string
        maxLength: 50
        x-jsonld-id: http://example.org/ontology/brand
    required:
    - fid
  POI:
    title: Point of Interest
    type: object
    properties:
      fid:
        description: Primary Key (INTEGER, NOT NULL, AUTOINCREMENT)
        type: integer
      geom:
        description: 'Geospatial column: POINT'
        type: object
        format: Point
      poi_id:
        description: MEDIUMINT
        type: integer
      naam:
        description: TEXT(50)
        type: string
        maxLength: 50
      type:
        description: TEXT(50)
        type: string
        maxLength: 50
    required:
    - fid
  KayakTrip:
    title: Kayak Trip
    type: object
    properties:
      fid:
        description: Primary Key (INTEGER, NOT NULL, AUTOINCREMENT)
        type: integer
      geom:
        description: 'Geospatial column: MULTILINESTRING'
        type: object
        format: MultiLineString
      name:
        description: TEXT
        type: string
      cmt:
        description: TEXT (Comment)
        type: string
      desc:
        description: TEXT (Description, column name is 'desc')
        type: string
      src:
        description: TEXT (Source)
        type: string
      type:
        description: TEXT
        type: string
      boat_type:
        description: Foreign Key to boat_type(fid) (INTEGER)
        type: integer
    required:
    - fid
  POIVisited:
    title: POI Visited (Junction Table)
    type: object
    properties:
      fid:
        description: Primary Key (INTEGER, NOT NULL, AUTOINCREMENT)
        type: integer
      poi_id:
        description: Foreign Key to poi(fid) (INTEGER)
        type: integer
      trip_id:
        description: Foreign Key to kayak_trips(fid) (INTEGER)
        type: integer
    required:
    - fid
x-jsonld-extra-terms:
  BoatType: http://example.org/ontology/BoatType
  PointOfInterest: http://example.org/ontology/PointOfInterest
  KayakTrip: http://example.org/ontology/KayakTrip
  Visit: http://example.org/ontology/Visit
  boatID:
    x-jsonld-id: http://example.org/ontology/boatID
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#integer
  boatName: http://example.org/ontology/boatName
  poiID:
    x-jsonld-id: http://example.org/ontology/poiID
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#integer
  poiName: http://example.org/ontology/poiName
  poiType: http://example.org/ontology/poiType
  tripName: http://example.org/ontology/tripName
  comment: http://example.org/ontology/comment
  source: http://example.org/ontology/source
  tripType: http://example.org/ontology/tripType
  hasPointGeometry:
    x-jsonld-id: http://example.org/ontology/hasPointGeometry
    x-jsonld-type: '@id'
  hasMultiLineGeometry:
    x-jsonld-id: http://example.org/ontology/hasMultiLineGeometry
    x-jsonld-type: '@id'
  usesBoatType:
    x-jsonld-id: http://example.org/ontology/usesBoatType
    x-jsonld-type: '@id'
  visitsPOI:
    x-jsonld-id: http://example.org/ontology/visitsPOI
    x-jsonld-type: '@id'
  partOfTrip:
    x-jsonld-id: http://example.org/ontology/partOfTrip
    x-jsonld-type: '@id'
x-jsonld-prefixes:
  ex: http://example.org/ontology/
  xsd: http://www.w3.org/2001/XMLSchema#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  schema: http://schema.org/
  geo: http://www.opengis.net/ont/geosparql#

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/tripping/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/tripping/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "BoatType": "ex:BoatType",
    "PointOfInterest": "ex:PointOfInterest",
    "KayakTrip": "ex:KayakTrip",
    "Visit": "ex:Visit",
    "boatID": {
      "@id": "ex:boatID",
      "@type": "xsd:integer"
    },
    "boatName": "ex:boatName",
    "poiID": {
      "@id": "ex:poiID",
      "@type": "xsd:integer"
    },
    "poiName": "ex:poiName",
    "poiType": "ex:poiType",
    "tripName": "ex:tripName",
    "comment": "ex:comment",
    "source": "ex:source",
    "tripType": "ex:tripType",
    "hasPointGeometry": {
      "@id": "ex:hasPointGeometry",
      "@type": "@id"
    },
    "hasMultiLineGeometry": {
      "@id": "ex:hasMultiLineGeometry",
      "@type": "@id"
    },
    "usesBoatType": {
      "@id": "ex:usesBoatType",
      "@type": "@id"
    },
    "visitsPOI": {
      "@id": "ex:visitsPOI",
      "@type": "@id"
    },
    "partOfTrip": {
      "@id": "ex:partOfTrip",
      "@type": "@id"
    },
    "category": "ex:category",
    "description": "ex:description",
    "brand": "ex:brand",
    "ex": "http://example.org/ontology/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "schema": "http://schema.org/",
    "geo": "http://www.opengis.net/ont/geosparql#",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/tripping/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/tripping`

