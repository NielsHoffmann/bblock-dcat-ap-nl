
# DCAT-AP-NL profile 3.0 - Dataset/Records binding (Model)

`geonovum-labs.bbr.dcat.dataset-records` *v0.1*

DCAT-AP-NL 3.0 Dataset profile bound to OGC API Records

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL Dataset bound to OGC API records schema

This building block defines a binding from OGC API Records schema to the DCAT-AP-NL profile.

This profile extends a building block that uses the official JSON-LD context for DCAT bound to the OGC API Records.

It uses the context for a dcat:Dataset as the basis for a Record.

All very much work in progress at the moment, the implementation might still change considerably.

## Examples

### DCAT-AP-NL 3.0 Dataset example showing binding to OGC API record schema.
This example shows a linked data / turtle file that is typed both as a dcat:dataset
as well as an ogcapi-records:Record (geojson:Feature). This is to illustrate the combined properties
and to validate those against the validation rules.
#### ttl
```ttl
@prefix exBB: <http://example/buildingblock> .
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://www.opengis.net/def/ogc-api/records/rec:> .
@prefix ns2: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix rec: <https://www.opengis.net/def/ogc-api/records/> .
@prefix time: <http://www.w3.org/2006/time#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .

exBB:2482250f-3b00-4439-9f93-f3118229b201 a dcat:Dataset, geojson:Feature;
    dct:title "BRT TOP10NL"@nl ;
    dcat:distribution exBB:2482250f-3b00-4439-9f93-f3118229b201_d0e1102 ;
    dct:accessRights <http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply>,
        <http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations> ;
    dcat:contactPoint [ a vcard:Individual ;
            vcard:fn "Klantcontactcenter"@nl ;
            vcard:hasAddress [ a vcard:Address ;
                    vcard:country-name "Nederland" ;
                    vcard:locality "Apeldoorn" ;
                    vcard:postal-code "7300 GH" ;
                    vcard:region "Gelderland" ;
                    vcard:street-address "Postbus 9046" ] ;
            vcard:hasEmail <mailto:kcc@kadaster.nl> ;
            vcard:hasTelephone <tel:+31088-1832200> ;
            vcard:hasURL <https://www.kadaster.nl> ;
            vcard:organization-name "Kadaster"@nl ] ;
    dct:creator [ a foaf:Agent ;
            foaf:name "Kadaster"@nl ;
            foaf:name "Kadaster"@en ;
            dct:type <http://purl.org/adms/publishertype/LocalAuthority> ] ;
    dct:publisher [ a foaf:Agent ;
            foaf:name "Kadaster"@nl ;
            foaf:name "Kadaster"@en ;
            dct:type <http://purl.org/adms/publishertype/LocalAuthority> ] ;
    dct:identifier "2482250f-3b00-4439-9f93-f3118229b201"^^xsd:string ;
    dct:language <http://publications.europa.eu/resource/authority/language/DUT> ;
    dct:accrualPeriodicity <http://publications.europa.eu/resource/authority/frequency/ANNUAL> ;
    dcat:keyword "BRT"@nl,
        "Basisregistratie Topografie"@nl,
        "Kadaster"@nl,
        "TOP10"@nl,
        "TOP10NL"@nl,
        "Topografie"@nl,
        "Topografische kaart"@nl,
        "basisset NOVEX"@nl ;
    dcat:theme [ a skos:Concept ;
            dct:source <http://inspire.ec.europa.eu/metadata-codelist/SpatialScope/national> ;
            skos:prefLabel "Nationaal"@nl ],
        [ a skos:Concept ;
            dct:source <http://www.eionet.europa.eu/gemet/nl/inspire-theme/hy> ;
            skos:prefLabel "Hydrografie"@nl ],
        [ a skos:Concept ;
            dct:source <http://data.europa.eu/bna/c_dd313021> ;
            skos:prefLabel "Aardobservatie en milieu"@nl ],
        [ a skos:Concept ;
            dct:source <http://www.eionet.europa.eu/gemet/nl/inspire-theme/sr> ;
            skos:prefLabel "Zeegebieden"@nl ],
        [ a skos:Concept ;
            dct:source <http://www.eionet.europa.eu/gemet/nl/inspire-theme/gn> ;
            skos:prefLabel "Geografische namen"@nl ],
        [ a skos:Concept ;
            dct:source <http://data.europa.eu/bna/c_b79e35eb> ;
            skos:prefLabel "Mobiliteit"@nl ],
        [ a skos:Concept ;
            dct:source <http://data.europa.eu/eli/reg_impl/2023/138/oj> ;
            skos:prefLabel "HVD"@nl ],
        [ a skos:Concept ;
            dct:source <http://www.eionet.europa.eu/gemet/nl/inspire-theme/lc> ;
            skos:prefLabel "Bodemgebruik"@nl ],
        [ a skos:Concept ;
            dct:source <http://www.eionet.europa.eu/gemet/nl/inspire-theme/tn> ;
            skos:prefLabel "Vervoersnetwerken"@nl ],
        [ a skos:Concept ;
            dct:source <http://data.europa.eu/bna/c_ac64a52d> ;
            skos:prefLabel "Geospatiale data"@nl ] 

.
```


### DCAT-AP-NL 3.0 Dataset example encoded in JSON, showing binding to an OGC API record schema.
This example shows a json file with OGC API Records info as well as DCAT-AP-NL 3.0 info.
It uses the JSON-LD context to transform JSON into linked data. 
This is to illustrate the way interoperability can be achieved between OGC API Records and DCAT-AP-NL 3.0.

The JSON-LD and RDF/Turtle examples are transformed from the JSON source file using the JSON-LD context that you
can find under the 'Semantic Uplift' section of this building block.
#### json
```json
{
  "id": "2482250f-3b00-4439-9f93-f3118229b201",
  "type": "Feature",
  "time": {
    "interval": [
      "1924-08-17T00:00:00Z",
      ".."
    ]
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          3.30,53.60
        ],
        [
          7.24,53.60
        ],
        [
          7.24,50.73
        ],
        [
          3.30,50.73
        ],
        [
          3.30,53.60
        ]
      ]
    ]
  },
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core",
    "http://modellen.geostandaarden.nl/dcat-ap-nl/"
  ],
  "properties": {
      "type": "Dataset",
      "title" : "BRT TOP10NL",
      "accessRights" : [
      "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
      "http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations"
      ],
      "identifier" : "2482250f-3b00-4439-9f93-f3118229b201",
      "license": "https://creativecommons.org/publicdomain/zero/1.0/",
      "accrualPeriodicity" : "http://publications.europa.eu/resource/authority/frequency/ANNUAL",
      "keywords": [
        "BRT",
        "Basisregistratie Topografie",
        "Kadaster",
        "TOP10",
        "TOP10NL",
        "Topografie",
        "Topografische kaart",
        "basisset NOVEX" 
      ],
      "theme": [
         {
          "a": "skos:Concept", 
          "source": "http://inspire.ec.europa.eu/metadata-codelist/SpatialScope/national",
          "prefLabel": {
              "nl": "Nationale datasets"
          }
        },
        {
          "a": "skos:Concept", 
          "source": "http://www.eionet.europa.eu/gemet/nl/inspire-theme/hy",
          "prefLabel": {
              "nl": "Hydrografie"
          }
        },
        {
          "a": "skos:Concept", 
          "source": "http://data.europa.eu/bna/c_dd313021",
          "prefLabel": {
              "nl": "Aardobservatie en milieu"
          }
        }
        
      ]
  },
  "linkTemplates": [
    
  ],
  "links": [
   
  ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dataset-records/context.jsonld",
  "id": "2482250f-3b00-4439-9f93-f3118229b201",
  "type": "Feature",
  "time": {
    "interval": [
      "1924-08-17T00:00:00Z",
      ".."
    ]
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          3.3,
          53.6
        ],
        [
          7.24,
          53.6
        ],
        [
          7.24,
          50.73
        ],
        [
          3.3,
          50.73
        ],
        [
          3.3,
          53.6
        ]
      ]
    ]
  },
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core",
    "http://modellen.geostandaarden.nl/dcat-ap-nl/"
  ],
  "properties": {
    "type": "Dataset",
    "title": "BRT TOP10NL",
    "accessRights": [
      "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
      "http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations"
    ],
    "identifier": "2482250f-3b00-4439-9f93-f3118229b201",
    "license": "https://creativecommons.org/publicdomain/zero/1.0/",
    "accrualPeriodicity": "http://publications.europa.eu/resource/authority/frequency/ANNUAL",
    "keywords": [
      "BRT",
      "Basisregistratie Topografie",
      "Kadaster",
      "TOP10",
      "TOP10NL",
      "Topografie",
      "Topografische kaart",
      "basisset NOVEX"
    ],
    "theme": [
      {
        "a": "skos:Concept",
        "source": "http://inspire.ec.europa.eu/metadata-codelist/SpatialScope/national",
        "prefLabel": {
          "nl": "Nationale datasets"
        }
      },
      {
        "a": "skos:Concept",
        "source": "http://www.eionet.europa.eu/gemet/nl/inspire-theme/hy",
        "prefLabel": {
          "nl": "Hydrografie"
        }
      },
      {
        "a": "skos:Concept",
        "source": "http://data.europa.eu/bna/c_dd313021",
        "prefLabel": {
          "nl": "Aardobservatie en milieu"
        }
      }
    ]
  },
  "linkTemplates": [],
  "links": []
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<http://example.com/records/2482250f-3b00-4439-9f93-f3118229b201> a <http://example.com/records/Dataset>,
        geojson:Feature ;
    dcterms:accrualPeriodicity "http://publications.europa.eu/resource/authority/frequency/ANNUAL" ;
    dcterms:conformsTo <http://modellen.geostandaarden.nl/dcat-ap-nl/>,
        <http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core> ;
    dcterms:temporal [ ] ;
    dcterms:title "BRT TOP10NL" ;
    dcat:keyword "BRT",
        "Basisregistratie Topografie",
        "Kadaster",
        "TOP10",
        "TOP10NL",
        "Topografie",
        "Topografische kaart",
        "basisset NOVEX" ;
    dcat:license "https://creativecommons.org/publicdomain/zero/1.0/" ;
    dcat:theme [ a skos:Concept ;
            dcterms:source <http://data.europa.eu/bna/c_dd313021> ;
            skos:prefLabel "Aardobservatie en milieu"@nl ],
        [ a skos:Concept ;
            dcterms:source <http://www.eionet.europa.eu/gemet/nl/inspire-theme/hy> ;
            skos:prefLabel "Hydrografie"@nl ],
        [ a skos:Concept ;
            dcterms:source <http://inspire.ec.europa.eu/metadata-codelist/SpatialScope/national> ;
            skos:prefLabel "Nationale datasets"@nl ] ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 3.3e+00 5.36e+01 ) ( 7.24e+00 5.36e+01 ) ( 7.24e+00 5.073e+01 ) ( 3.3e+00 5.073e+01 ) ( 3.3e+00 5.36e+01 ) ) ) ] .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for DCAT Dataset - defines all extra
  elements defined by DCAT so that the JSON-LD context can map to DCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.yaml
x-jsonld-extra-terms:
  a: '@type'
  theme:
    x-jsonld-id: http://www.w3.org/ns/dcat#theme
    x-jsonld-container: '@set'
  concept:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#Concept
    x-jsonld-type: '@id'
  source:
    x-jsonld-id: http://purl.org/dc/terms/source
    x-jsonld-type: '@id'
  prefLabel:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#prefLabel
    x-jsonld-container: '@language'
  accrualPeriodicity: http://purl.org/dc/terms/accrualPeriodicity
x-jsonld-prefixes:
  dcat: http://www.w3.org/ns/dcat#
  skos: http://www.w3.org/2004/02/skos/core#
  dct: http://purl.org/dc/terms/

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dataset-records/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dataset-records/schema.yaml)


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
    "accessrights": "dct:accessRights",
    "variables": {
      "@container": "@id",
      "@id": "rec:hasVariable",
      "@context": {
        "@base": "http://example.com/variables/",
        "@vocab": "https://www.opengis.net/def/ogc-api/records/"
      }
    },
    "a": "@type",
    "theme": {
      "@id": "dcat:theme",
      "@container": "@set"
    },
    "concept": {
      "@id": "skos:Concept",
      "@type": "@id"
    },
    "source": {
      "@id": "dct:source",
      "@type": "@id"
    },
    "prefLabel": {
      "@id": "skos:prefLabel",
      "@container": "@language"
    },
    "accrualPeriodicity": "dct:accrualPeriodicity",
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
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dataset-records/context.jsonld)

## Sources

* [DCAT-AP-NL 3.0 Specification](https://docs.geostandaarden.nl/dcat/dcat-ap-nl30/)
* [API Records Specification Repository](https://github.com/opengeospatial/ogcapi-records)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/dataset-records`

