
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

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: schema for a demo dataset about kayak trips
allOf:
- $ref: https://ogcincubator.github.io/bblocks-ogcapi-records/build/annotated/api/records/v1/schemas/recordGeoJSON/schema.yaml
x-jsonld-extra-terms:
  type: '@type'
  title:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/title
  accessRights:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/accessRights
  license: http://www.w3.org/ns/dcat#license
x-jsonld-prefixes:
  dcat: http://www.w3.org/ns/dcat#
  dct: http://purl.org/dc/terms/
  owl: http://www.w3.org/2002/07/owl#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/tripping/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/tripping/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "Feature": "geojson:Feature",
    "FeatureCollection": "geojson:FeatureCollection",
    "GeometryCollection": "geojson:GeometryCollection",
    "LineString": "geojson:LineString",
    "MultiLineString": "geojson:MultiLineString",
    "MultiPoint": "geojson:MultiPoint",
    "MultiPolygon": "geojson:MultiPolygon",
    "Point": "geojson:Point",
    "Polygon": "geojson:Polygon",
    "features": {
      "@container": "@set",
      "@id": "geojson:features"
    },
    "type": "@type",
    "id": "@id",
    "properties": "@nest",
    "geometry": {
      "@context": {
        "coordinates": {
          "@container": "@list",
          "@id": "geojson:coordinates"
        }
      },
      "@id": "geojson:geometry"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "links": {
      "@context": {
        "rel": {
          "@context": {
            "@base": "http://www.iana.org/assignments/relation/"
          },
          "@id": "http://www.iana.org/assignments/relation",
          "@type": "@id"
        },
        "type": "dct:format",
        "hreflang": "dct:language",
        "title": "rdfs:label",
        "length": "dct:extent"
      },
      "@id": "rdfs:seeAlso"
    },
    "conformsTo": {
      "@container": "@set",
      "@id": "dct:conformsTo",
      "@type": "@id"
    },
    "time": "dct:temporal",
    "created": "dct:created",
    "updated": "dct:modified",
    "title": {
      "@container": "@set",
      "@id": "dct:title"
    },
    "description": {
      "@container": "@set",
      "@id": "dct:description"
    },
    "keywords": {
      "@container": "@set",
      "@id": "dcat:keyword"
    },
    "language": "rec:language",
    "languages": {
      "@container": "@set",
      "@id": "rec:languages"
    },
    "resourceLanguages": {
      "@container": "@set",
      "@id": "rec:resourceLanguages"
    },
    "externalIds": {
      "@context": {
        "scheme": "rec:scheme",
        "value": "rec:id"
      },
      "@container": "@set",
      "@id": "rec:scopedIdentifier"
    },
    "themes": {
      "@container": "@set",
      "@id": "rec:themes"
    },
    "formats": {
      "@container": "@set",
      "@id": "rec:format",
      "@type": "@id"
    },
    "contacts": {
      "@context": {
        "rel": {
          "@context": {
            "@base": "http://www.iana.org/assignments/relation/"
          },
          "@id": "http://www.iana.org/assignments/relation",
          "@type": "@id"
        },
        "type": "dct:type",
        "hreflang": "dct:language",
        "title": "rdfs:label",
        "length": "dct:extent"
      },
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "license": "dcat:license",
    "rights": "dcat:rights",
    "linkTemplates": {
      "@context": {
        "rel": {
          "@context": {
            "@base": "http://www.iana.org/assignments/relation/"
          },
          "@id": "http://www.iana.org/assignments/relation",
          "@type": "@id"
        },
        "type": "dct:format",
        "hreflang": "dct:language",
        "title": "rdfs:label",
        "length": "dct:extent",
        "uriTemplate": {
          "@type": "xsd:string",
          "@id": "rec:uriTemplate"
        },
        "varBase": "rec:varBase",
        "variables": {
          "@id": "rec:hasVariable",
          "@container": "@index",
          "@index": "dct:identifier",
          "@type": "@json"
        }
      },
      "@id": "rec:hasLinkTemplate"
    },
    "accessRights": {
      "@container": "@set",
      "@id": "dct:accessRights"
    },
    "href": {
      "@type": "@id",
      "@id": "oa:hasTarget"
    },
    "geojson": "https://purl.org/geojson/vocab#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "oa": "http://www.w3.org/ns/oa#",
    "dct": "http://purl.org/dc/terms/",
    "dcat": "http://www.w3.org/ns/dcat#",
    "rec": "https://www.opengis.net/def/ogc-api/records/",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "w3ctime": "http://www.w3.org/2006/time#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "prov": "http://www.w3.org/ns/prov#",
    "foaf": "http://xmlns.com/foaf/0.1/",
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

