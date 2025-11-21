
# contact test (Model)

`geonovum-labs.bbr.dcat.contact` *v0.1*

experiment with contact schema

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL 3.0 - contactpoint

testing compatibility of OAPR contacts and DCAT-AP-NL Contactpoint


## Examples

### contactpoint
example dcat-ap contactpoint in turtle
#### ttl
```ttl
@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .
@prefix eli: <http://data.europa.eu/eli/ontology#> .
@prefix adms: <http://www.w3.org/ns/adms#>.
@prefix dcatap: <http://data.europa.eu/r5r/>.
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#>.
@prefix example-ds: <https://data.gov.gr/id/dataset/> .
@prefix example-ser: <https://data.gov.gr/id/datasetseries/> .


   dcat:contactPoint 
     a vcard:Kind ;
     vcard:fn "Mijn Organisatie"@nl ;
     vcard:fn "My Organization"@en ;
     vcard:hasEmail <mailto:opendata@mijnorganisatie.nl> ;
     vcard:hasURL "http://mijnorganisatie.org/" ;
     vcard:organization-name "Mijn Organisatie"@nl ;
     vcard:organization-name "My Organization"@en
  .


```


### contact json dcat-ap
json example of a possible structure for a dcat contactpoint.

This does not validate against the api records schema...
#### json
```json
{
    "contactpunt": [{
              "a": "vcard:Individual",
              "fn": "InfoDesk" ,
              "organization-name": {
                "nl": "Directie Operatie, Dienstverlening en Registratie, afdeling Data-, Proces- en Informatiemanagement"
              },
              "hasEmail": "mailto:dpi-gi@kadaster.nl"
            }]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/contact/context.jsonld",
  "contactpunt": [
    {
      "a": "vcard:Individual",
      "fn": "InfoDesk",
      "organization-name": {
        "nl": "Directie Operatie, Dienstverlening en Registratie, afdeling Data-, Proces- en Informatiemanagement"
      },
      "hasEmail": "mailto:dpi-gi@kadaster.nl"
    }
  ]
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .

[] dcat:contactPoint [ a vcard:Individual ;
            vcard:fn "InfoDesk"@nl ;
            vcard:hasEmail <mailto:dpi-gi@kadaster.nl> ;
            vcard:organization-name "Directie Operatie, Dienstverlening en Registratie, afdeling Data-, Proces- en Informatiemanagement"@nl ] .


```


### contact json api records
json example of a structure conform API Records for contact information.
#### json
```json
{
    "contacts": [
      {
        "name": "World Ozone and Ultraviolet Radiation Data Centre",
        "links": [
          {
            "href": "https://woudc.org",
            "rel": "about",
            "type": "text/html"
          }
        ],
        "roles": [
          "publisher"
        ]
      }
    ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/contact/context.jsonld",
  "contacts": [
    {
      "name": "World Ozone and Ultraviolet Radiation Data Centre",
      "links": [
        {
          "href": "https://woudc.org",
          "rel": "about",
          "type": "text/html"
        }
      ],
      "roles": [
        "publisher"
      ]
    }
  ]
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

[] dcat:contactPoint [ rdfs:seeAlso [ dcterms:type "text/html" ;
                    ns1:relation <http://www.iana.org/assignments/relation/about> ;
                    oa:hasTarget <https://woudc.org> ] ] .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for DCAT Dataset - defines all extra
  elements defined by DCAT so that the JSON-LD context can map to DCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/bblocks-ogcapi-records/build/annotated/api/records/v1/schemas/contact/schema.yaml
x-jsonld-extra-terms:
  a: '@type'
  contactpunt: http://www.w3.org/ns/dcat#contactPoint
  fn:
    x-jsonld-id: http://www.w3.org/2006/vcard/ns#fn
    x-jsonld-language: nl
  organization-name:
    x-jsonld-id: http://www.w3.org/2006/vcard/ns#organization-name
    x-jsonld-container: '@language'
  hasEmail:
    x-jsonld-id: http://www.w3.org/2006/vcard/ns#hasEmail
    x-jsonld-type: '@id'
  contacts:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#contactPoint
    x-jsonld-type: '@id'
  links:
    x-jsonld-context:
      type: http://purl.org/dc/terms/type
    x-jsonld-id: rdfs:seeAlso
x-jsonld-prefixes:
  dcat: http://www.w3.org/ns/dcat#
  vcard: http://www.w3.org/2006/vcard/ns#
  dct: http://purl.org/dc/terms/
  skos: http://www.w3.org/2004/02/skos/core#
  foaf: http://xmlns.com/foaf/0.1/

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/contact/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/contact/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
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
    "type": "dct:type",
    "hreflang": "dct:language",
    "title": "rdfs:label",
    "length": "dct:extent",
    "a": "@type",
    "contactpunt": "dcat:contactPoint",
    "fn": {
      "@id": "vcard:fn",
      "@language": "nl"
    },
    "organization-name": {
      "@id": "vcard:organization-name",
      "@container": "@language"
    },
    "hasEmail": {
      "@id": "vcard:hasEmail",
      "@type": "@id"
    },
    "contacts": {
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "links": "rdfs:seeAlso",
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "dcat": "http://www.w3.org/ns/dcat#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/contact/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/contact`

