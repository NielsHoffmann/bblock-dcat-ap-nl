
# Semantic uplift example (Model)

`geonovum-labs.bbr.dcat.uplift-example` *v0.1*

A building block to show how semantic uplift works.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### semantic uplift example
An example to show how semantic uplift works.
#### json
```json
{
    "type": "Feature",
    "properties" : {
      "type": "dcat:Dataset",
      "title" : "BRT TOP10NL",
    
      "accessRights" : [
        "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
        "http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations"
        ],
      "identifier" : "2482250f-3b00-4439-9f93-f3118229b201",
      "license": "https://creativecommons.org/publicdomain/zero/1.0/"
    },
    "geometry" : null,
    "id" : "https://data.overheid.nl/dataset/top10nl",
    "linkTemplates": [
    
  ],
    "links": [
      {
        "rel": "self",
        "href": "https://data.overheid.nl/dataset/top10nl",
        "type": "application/ld+json"
      },
      {
        "rel": "alternate",
        "href": "https://data.overheid.nl/dataset/top10nl.html",
        "type": "text/html"
      }
    ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/uplift-example/context.jsonld",
  "type": "Feature",
  "properties": {
    "type": "dcat:Dataset",
    "title": "BRT TOP10NL",
    "accessRights": [
      "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
      "http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations"
    ],
    "identifier": "2482250f-3b00-4439-9f93-f3118229b201",
    "license": "https://creativecommons.org/publicdomain/zero/1.0/"
  },
  "geometry": null,
  "id": "https://data.overheid.nl/dataset/top10nl",
  "linkTemplates": [],
  "links": [
    {
      "rel": "self",
      "href": "https://data.overheid.nl/dataset/top10nl",
      "type": "application/ld+json"
    },
    {
      "rel": "alternate",
      "href": "https://data.overheid.nl/dataset/top10nl.html",
      "type": "text/html"
    }
  ]
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

<https://data.overheid.nl/dataset/top10nl> a dcat:Dataset,
        geojson:Feature ;
    rdfs:label "BRT TOP10NL" ;
    dct:accessRights "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
        "http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations" ;
    rdfs:seeAlso [ dct:type "application/ld+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/self> ;
            oa:hasTarget <https://data.overheid.nl/dataset/top10nl> ],
        [ dct:type "text/html" ;
            ns1:relation <http://www.iana.org/assignments/relation/alternate> ;
            oa:hasTarget <https://data.overheid.nl/dataset/top10nl.html> ] ;
    dcat:license "https://creativecommons.org/publicdomain/zero/1.0/" .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
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

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/uplift-example/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/uplift-example/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "type": "@type",
    "coordinates": {
      "@container": "@list",
      "@id": "geojson:coordinates"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "href": {
      "@type": "@id",
      "@id": "oa:hasTarget"
    },
    "rel": {
      "@context": {
        "@base": "http://www.iana.org/assignments/relation/"
      },
      "@id": "http://www.iana.org/assignments/relation",
      "@type": "@id"
    },
    "hreflang": "dct:language",
    "title": "rdfs:label",
    "length": "dct:extent",
    "created": "dct:created",
    "updated": "dct:modified",
    "uriTemplate": {
      "@type": "xsd:string",
      "@id": "oa:hasTarget"
    },
    "id": "@id",
    "properties": "@nest",
    "geometry": "geojson:geometry",
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
    "links": {
      "@context": {
        "type": "dct:type"
      },
      "@id": "rdfs:seeAlso"
    },
    "accessRights": {
      "@container": "@set",
      "@id": "dct:accessRights"
    },
    "license": "dcat:license",
    "geojson": "https://purl.org/geojson/vocab#",
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/uplift-example/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/uplift-example`

