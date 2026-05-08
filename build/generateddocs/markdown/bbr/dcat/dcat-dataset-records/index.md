
# DCAT-Dataset/Records binding (Schema)

`geonovum-labs.bbr.dcat.dcat-dataset-records` *v0.1*

DCAT profile of OGC API Records binds the OGC API Records schema to a DCAT Dataset. This is the baseline for semantic equivalence of OGC API records and a DCAT Dataset. This is an alternative block to the ogc-incubator version of DCAT/Records binding

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT baseline bound to OGC API records schema

This building block defines a binding from OGC API Records schema to the DCAT Vocabulary.

The JSON-LD context is derived from the [JSON-LD context for DCAT-AP](https://semiceu.github.io/DCAT-AP/releases/3.0.0/context/dcat-ap.jsonld).

It uses the context for a dcat:Dataset as the basis for a Record.

Main differences with the ogc-incubator version are the explicit definition of dcat:Distribution in the links section and multilingual properties.

__NOTE:__ Still work in progress !! context mapping is not complete for example
## Examples

### DCAT-AP-NL with OGC API Records in JSON
An example based on the Bomen metadata record . 
Converted in JSON so the Semantic uplift via a JSON-LD context can be shown.
#### json
```json
{
    "id": "7b03a8de-5d0c-11ee-8a7e-3ce9f7462b83",
    "conformsTo": [
        "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
    ],
    "type": "Feature",
    "time": {
        "interval": [
        "2024-09-30",
        "9999-12-31"
    ],
    "resolution": "P1D"
    },
    "geometry": {
        "type": "Polygon",
        "coordinates": [
            [
                [
          2.4807,
          53.7187
        ],
        [
          7.9685,
          53.7187
        ],
        [
          7.9685,
          50.6058
        ],
        [
          2.4807,
          50.6058
        ],
        [
          2.4807,
          53.7187
        ]
            ]
        ]
    },
    "properties": {
        "created": "2024-09-30",
        "updated": "2024-12-06T09:49:52Z",
        "type": "dataset",
        "title": "Bomen",
        "description": "Subset van bomen in de omgeving van Sloten (Amsterdam)",
        "providers": [
            {
                "contactInfo": {
                    "address": {
                        "office": {}
                    },
                    "email": {
                        "office": "opendata@amsterdam.nl"
                    }
                },
                "name": null,
                "roles": [
                    {
                        "name": "pointOfContact"
                    }
                ]
            }
        ],
        "externalIds": [
            {
                "scheme": "default",
                "value": "7b03a8de-5d0c-11ee-8a7e-3ce9f7462b83"
            }
        ],
        "themes": [
            {
                "concepts": [
                    {
                        "id": "Boom",
                        "url": "https://definities.geostandaarden.nl/ibro/id/begrip/boom"
                    },
                    {
                        "id": "Park",
                        "url": "https://definities.geostandaarden.nl/ibro/id/begrip/park"
                    }
                ],
                "scheme": "https://definities.geostandaarden.nl/ibro/nl/"
            }
        ]
    },
    "links": [
        {
            "href": "http://localhost:5000/collections/bomen",
            "rel": "access",
            "title": "Bomen",
            "type": "OGC API Features",
            "distribution":{
                "type": "dcat:Distribution",
                    "title": {
                        "nl": "Bomen (OGC API Features)"
                    },
                "description": {
                    "nl": "API"
                    },
                "license": "http://creativecommons.org/publicdomain/mark/1.0/deed.nl"
            }
        }
    ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-dataset-records/context.jsonld",
  "id": "7b03a8de-5d0c-11ee-8a7e-3ce9f7462b83",
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
  ],
  "type": "Feature",
  "time": {
    "interval": [
      "2024-09-30",
      "9999-12-31"
    ],
    "resolution": "P1D"
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          2.4807,
          53.7187
        ],
        [
          7.9685,
          53.7187
        ],
        [
          7.9685,
          50.6058
        ],
        [
          2.4807,
          50.6058
        ],
        [
          2.4807,
          53.7187
        ]
      ]
    ]
  },
  "properties": {
    "created": "2024-09-30",
    "updated": "2024-12-06T09:49:52Z",
    "type": "dataset",
    "title": "Bomen",
    "description": "Subset van bomen in de omgeving van Sloten (Amsterdam)",
    "providers": [
      {
        "contactInfo": {
          "address": {
            "office": {}
          },
          "email": {
            "office": "opendata@amsterdam.nl"
          }
        },
        "name": null,
        "roles": [
          {
            "name": "pointOfContact"
          }
        ]
      }
    ],
    "externalIds": [
      {
        "scheme": "default",
        "value": "7b03a8de-5d0c-11ee-8a7e-3ce9f7462b83"
      }
    ],
    "themes": [
      {
        "concepts": [
          {
            "id": "Boom",
            "url": "https://definities.geostandaarden.nl/ibro/id/begrip/boom"
          },
          {
            "id": "Park",
            "url": "https://definities.geostandaarden.nl/ibro/id/begrip/park"
          }
        ],
        "scheme": "https://definities.geostandaarden.nl/ibro/nl/"
      }
    ]
  },
  "links": [
    {
      "href": "http://localhost:5000/collections/bomen",
      "rel": "access",
      "title": "Bomen",
      "type": "OGC API Features",
      "distribution": {
        "type": "dcat:Distribution",
        "title": {
          "nl": "Bomen (OGC API Features)"
        },
        "description": {
          "nl": "API"
        },
        "license": "http://creativecommons.org/publicdomain/mark/1.0/deed.nl"
      }
    }
  ]
}
```

#### ttl
```ttl
@prefix dct: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix rec: <https://www.opengis.net/def/ogc-api/records/> .
@prefix thns: <https://w3id.org/ogc/stac/themes/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<file:///github/workspace/7b03a8de-5d0c-11ee-8a7e-3ce9f7462b83> a <file:///github/workspace/dataset>,
        geojson:Feature ;
    dct:conformsTo <http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core> ;
    dct:created "2024-09-30" ;
    dct:description "Subset van bomen in de omgeving van Sloten (Amsterdam)" ;
    dct:modified "2024-12-06T09:49:52Z" ;
    dct:temporal [ ] ;
    dct:title "Bomen" ;
    rdfs:seeAlso [ rdfs:label "Bomen" ;
            dct:format "OGC API Features" ;
            ns1:relation <http://www.iana.org/assignments/relation/access> ;
            oa:hasTarget <http://localhost:5000/collections/bomen> ] ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 2.4807e+00 5.37187e+01 ) ( 7.9685e+00 5.37187e+01 ) ( 7.9685e+00 5.06058e+01 ) ( 2.4807e+00 5.06058e+01 ) ( 2.4807e+00 5.37187e+01 ) ) ) ] ;
    rec:scopedIdentifier [ rec:id "7b03a8de-5d0c-11ee-8a7e-3ce9f7462b83" ;
            rec:scheme "default" ] ;
    rec:themes [ thns:concepts <https://definities.geostandaarden.nl/ibro/id/begrip/boom>,
                <https://definities.geostandaarden.nl/ibro/id/begrip/park> ;
            thns:scheme "https://definities.geostandaarden.nl/ibro/nl/" ] .

<https://definities.geostandaarden.nl/ibro/id/begrip/boom> thns:id "Boom"^^xsd:string .

<https://definities.geostandaarden.nl/ibro/id/begrip/park> thns:id "Park"^^xsd:string .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
$id: https://geonovum-labs.bbr.dcat.dataset-records.json
title: DCAT OGC API record definition
description: DCAT Dataset OGC API record definition
allOf:
- $ref: https://ogcincubator.github.io/bblocks-ogcapi-records/build/annotated/api/records/v1/schemas/recordGeoJSON/schema.yaml
links:
  type: array
  minItems: 1
  items:
    $ref: '#/definitions/Link'
definitions:
  Link:
    title: Link object definition
    description: Link object definition including distribution
    type: object
    required:
    - href
    properties:
      href:
        type: string
        format: uri
        x-jsonld-type: '@id'
        x-jsonld-id: http://www.w3.org/ns/oa#hasTarget
      rel:
        type: string
      type:
        type: string
        x-jsonld-id: '@type'
      title:
        type: string
        x-jsonld-container: '@set'
        x-jsonld-id: http://purl.org/dc/terms/title
      distribution:
        type: object
        description: Available distribution of the dataset via this link.
        properties:
          title:
            $ref: '#/definitions/MultilingualString'
            x-jsonld-container: '@set'
            x-jsonld-id: http://purl.org/dc/terms/title
          description:
            $ref: '#/definitions/MultilingualString'
            x-jsonld-container: '@set'
            x-jsonld-id: http://purl.org/dc/terms/description
          accessURL:
            type: string
            format: uri
          downloadURL:
            type: string
            format: uri
          format:
            type: string
          license:
            type: string
            x-jsonld-id: http://www.w3.org/ns/dcat#license
  LanguageMap:
    type: object
    description: A language-mapped string where keys are BCP 47 language tags and
      values are the localized strings.
    patternProperties:
      ^[a-zA-Z]{2,8}(-[a-zA-Z0-9]{2,8})*$:
        type: string
    additionalProperties: false
  MultilingualString:
    oneOf:
    - type: string
    - $ref: '#/definitions/LanguageMap'
x-jsonld-extra-terms:
  Feature: https://purl.org/geojson/vocab#Feature
  FeatureCollection: https://purl.org/geojson/vocab#FeatureCollection
  GeometryCollection: https://purl.org/geojson/vocab#GeometryCollection
  LineString: https://purl.org/geojson/vocab#LineString
  MultiLineString: https://purl.org/geojson/vocab#MultiLineString
  MultiPoint: https://purl.org/geojson/vocab#MultiPoint
  MultiPolygon: https://purl.org/geojson/vocab#MultiPolygon
  Point: https://purl.org/geojson/vocab#Point
  Polygon: https://purl.org/geojson/vocab#Polygon
  features:
    x-jsonld-container: '@set'
    x-jsonld-id: https://purl.org/geojson/vocab#features
  type: '@type'
  id: '@id'
  properties: '@nest'
  geometry:
    x-jsonld-context:
      coordinates:
        '@container': '@list'
        '@id': https://purl.org/geojson/vocab#coordinates
    x-jsonld-id: https://purl.org/geojson/vocab#geometry
  bbox:
    x-jsonld-container: '@list'
    x-jsonld-id: https://purl.org/geojson/vocab#bbox
  links:
    x-jsonld-context:
      rel:
        '@context':
          '@base': http://www.iana.org/assignments/relation/
        '@id': http://www.iana.org/assignments/relation
        '@type': '@id'
      type: http://purl.org/dc/terms/format
      hreflang: http://purl.org/dc/terms/language
      title: http://www.w3.org/2000/01/rdf-schema#label
      length: http://purl.org/dc/terms/extent
      distribution:
        '@context':
          mediaType: https://www.opengis.net/def/ogc-api/records/mediaType
          name: https://www.opengis.net/def/ogc-api/records/name
          description: https://www.opengis.net/def/ogc-api/records/description
          license: https://www.opengis.net/def/ogc-api/records/license
          accessRights: https://www.opengis.net/def/ogc-api/records/accessRights
          conformsTo:
            '@container': '@set'
            '@id': http://purl.org/dc/terms/conformsTo
            '@type': '@id'
        '@id': http://www.w3.org/ns/dcat#distribution
        '@type': '@id'
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#seeAlso
  conformsTo:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/conformsTo
    x-jsonld-type: '@id'
  time: http://purl.org/dc/terms/temporal
  linkTemplates:
    x-jsonld-context:
      rel:
        '@context':
          '@base': http://www.iana.org/assignments/relation/
        '@id': http://www.iana.org/assignments/relation
        '@type': '@id'
      type: http://purl.org/dc/terms/format
      hreflang: http://purl.org/dc/terms/language
      title: http://www.w3.org/2000/01/rdf-schema#label
      length: http://purl.org/dc/terms/extent
      uriTemplate:
        '@type': http://www.w3.org/2001/XMLSchema#string
        '@id': https://www.opengis.net/def/ogc-api/records/uriTemplate
      varBase: https://www.opengis.net/def/ogc-api/records/varBase
      variables:
        '@id': https://www.opengis.net/def/ogc-api/records/hasVariable
        '@container': '@index'
        '@index': http://purl.org/dc/terms/identifier
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/hasLinkTemplate
  created: http://purl.org/dc/terms/created
  updated: http://purl.org/dc/terms/modified
  title:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/title
  description:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/description
  keywords:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#keyword
  language:
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/language
    x-jsonld-context:
      code: https://www.opengis.net/def/ogc-api/records/languageCode
      name: http://www.w3.org/2004/02/skos/core#prefLabel
  languages:
    x-jsonld-container: '@set'
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/languages
    x-jsonld-context:
      code: https://www.opengis.net/def/ogc-api/records/languageCode
      name: http://www.w3.org/2004/02/skos/core#prefLabel
  resourceLanguages:
    x-jsonld-container: '@set'
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/resourceLanguages
    x-jsonld-context:
      code: https://www.opengis.net/def/ogc-api/records/languageCode
      name: http://www.w3.org/2004/02/skos/core#prefLabel
  externalIds:
    x-jsonld-container: '@set'
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/scopedIdentifier
    x-jsonld-context:
      scheme: https://www.opengis.net/def/ogc-api/records/scheme
      value: https://www.opengis.net/def/ogc-api/records/id
  themes:
    x-jsonld-container: '@set'
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/themes
    x-jsonld-context:
      concepts:
        '@id': https://w3id.org/ogc/stac/themes/concepts
        '@context':
          id:
            '@type': http://www.w3.org/2001/XMLSchema#string
            '@id': https://w3id.org/ogc/stac/themes/id
          url:
            '@type': '@id'
            '@id': '@id'
        '@container': '@set'
      scheme: https://w3id.org/ogc/stac/themes/scheme
  formats:
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/format
    x-jsonld-context:
      name: https://www.opengis.net/def/ogc-api/records/name
      mediaType: https://www.opengis.net/def/ogc-api/records/mediaType
    x-jsonld-container: '@set'
    x-jsonld-type: '@id'
  contacts:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#contactPoint
    x-jsonld-type: '@id'
  license: http://www.w3.org/ns/dcat#license
  accessrights: http://purl.org/dc/terms/accessRights
  variables:
    x-jsonld-container: '@id'
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/hasVariable
    x-jsonld-context:
      '@base': http://example.com/variables/
      '@vocab': https://www.opengis.net/def/ogc-api/records/
  href:
    x-jsonld-type: '@id'
    x-jsonld-id: http://www.w3.org/ns/oa#hasTarget
  rights: http://www.w3.org/ns/dcat#rights
x-jsonld-prefixes:
  geojson: https://purl.org/geojson/vocab#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  dct: http://purl.org/dc/terms/
  dcat: http://www.w3.org/ns/dcat#
  rec: https://www.opengis.net/def/ogc-api/records/
  xsd: http://www.w3.org/2001/XMLSchema#
  skos: http://www.w3.org/2004/02/skos/core#
  thns: https://w3id.org/ogc/stac/themes/
  oa: http://www.w3.org/ns/oa#
  owl: http://www.w3.org/2002/07/owl#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
  w3ctime: http://www.w3.org/2006/time#
  dctype: http://purl.org/dc/dcmitype/
  vcard: http://www.w3.org/2006/vcard/ns#
  prov: http://www.w3.org/ns/prov#
  foaf: http://xmlns.com/foaf/0.1/

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-dataset-records/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-dataset-records/schema.yaml)


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
          "@index": "dct:identifier"
        }
      },
      "@id": "rec:hasLinkTemplate"
    },
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
    "language": {
      "@id": "rec:language",
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      }
    },
    "languages": {
      "@container": "@set",
      "@id": "rec:languages",
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      }
    },
    "resourceLanguages": {
      "@container": "@set",
      "@id": "rec:resourceLanguages",
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      }
    },
    "externalIds": {
      "@container": "@set",
      "@id": "rec:scopedIdentifier",
      "@context": {
        "scheme": "rec:scheme",
        "value": "rec:id"
      }
    },
    "themes": {
      "@container": "@set",
      "@id": "rec:themes",
      "@context": {
        "concepts": {
          "@id": "thns:concepts",
          "@context": {
            "id": {
              "@type": "xsd:string",
              "@id": "thns:id"
            },
            "url": {
              "@type": "@id",
              "@id": "@id"
            }
          },
          "@container": "@set"
        },
        "scheme": "thns:scheme"
      }
    },
    "formats": {
      "@id": "rec:format",
      "@context": {
        "name": "rec:name",
        "mediaType": "rec:mediaType"
      },
      "@container": "@set",
      "@type": "@id"
    },
    "contacts": {
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "license": "dcat:license",
    "accessrights": "dct:accessRights",
    "variables": {
      "@container": "@id",
      "@id": "rec:hasVariable",
      "@context": {
        "@base": "http://example.com/variables/",
        "@vocab": "https://www.opengis.net/def/ogc-api/records/"
      }
    },
    "href": {
      "@type": "@id",
      "@id": "oa:hasTarget"
    },
    "rights": "dcat:rights",
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
    "thns": "https://w3id.org/ogc/stac/themes/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-dataset-records/context.jsonld)

## Sources

* [DCAT v3 Specification](https://www.w3.org/TR/vocab-dcat-3/)
* [API Records Specification Repository](https://github.com/opengeospatial/ogcapi-records)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/dcat-dataset-records`

