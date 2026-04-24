
# DCAT/Records binding (Schema)

`geonovum-labs.bbr.dcat.dcat-records` *v0.1*

DCAT profile of OGC API Records binds the OGC API Records schema to the DCAT vocabulary. This is the baseline for semantic equivalence of OGC API records and the DCAT model. This is an alternative block to the ogc-incubator version of DCAT/Records binding

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
An example based on the BAG metadata record from the NGR. 
Converted in JSON so the Semantic uplift via a JSON-LD context can be shown.
#### json
```json
{
  "type": "Feature",
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core",
    "http://modellen.geostandaarden.nl/dcat-ap-nl/"
  ],
  "id": "urn:ogc:record:generated-id",
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
    "type": [
      "http://www.w3.org/ns/dcat#Dataset",
      "http://www.w3.org/ns/prov#Entity"
    ],
    "contactPoint": {
      "organizationName": {
        "nl": "Directie Operatie, Dienstverlening en Registratie, afdeling Data-, Proces- en Informatiemanagement"
      },
      "email": "mailto:dpi-gi@kadaster.nl"
    },
    "accrualPeriodicity":  "http://publications.europa.eu/resource/authority/frequency/DAILY",
    "accessRights": "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
    "conformsTo": {
      "rdf:type": "http://purl.org/dc/terms/Standard",
      "dcterms:issued": "2010-12-08",
      "dcterms:title": {
        "nl": "VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens"
      }
    },
    "created": "2013-02-18",
    "description": {
      "nl": "De gegevens bestaan uit BAG-panden en een deelselectie van BAG-gegevens van deze panden en de zich daarin bevindende verblijfsobjecten. Ook de ligplaatsen en standplaatsen zijn hierin opgenomen met een deelselectie van BAG-gegevens. De gegevens van de nummeraanduiding zijn in deze services onderdeel van de adresseerbare objecten, hierbij wordt slechts 1 adres opgenomen, dus objecten met meerdere adressen (hoofd- en nevenadressen) zijn niet compleet. In deze services zitten dus niet alle BAG adressen. Aangezien niet alle BAG gegevens worden geleverd, adviseren wij u om de actuele gegevens in één van de BAG producten te controleren. Raadpleeg de BAG Viewer voor enkele bevragingen van BAG gegevens. Een overzicht van alle beschikbare producten kunt u vinden op de website https://www.kadaster.nl/zakelijk/registraties/basisregistraties/bag . De BAG WMS, BAG WFS en BAG API Individuele bevragingen zijn expliciet niet bedoeld voor bulkbevragingen waarmee veel gegevens in één keer worden opgevraagd en in een database worden verwerkt. Wilt u in één keer meer gegevens opvragen, dan raden wij u aan om gebruik te maken van onze BAG Geopackage (https://www.kadaster.nl/zakelijk/producten/adressen-en-gebouwen/bag-geopackage) of BAG extract (https://www.kadaster.nl/zakelijk/producten/adressen-en-gebouwen/bag-2.0-extract). De BAG Geopackage en de BAG extract kunt u downloaden via de Atom downloadservice: https://service.pdok.nl/lv/bag/atom/bag.xml . Deze dataset wordt ook gebruikt voor het ontsluiten van het INSPIRE thema Gebouwen. Het betreft gebouwcontouren, constructieve onderdelen van gebouwen en ruimtelijke barrieres. Dit betreft niet-geharmoniseerde data uit de basisregistratie Adressen en Gebouwen (BAG). De service wordt dagelijks geactualiseerd."
    },
    "identifier": "1fa33d90-79cb-11e2-b92a-0800200c9a66",
    "language": "http://publications.europa.eu/resource/authority/language/DUT",
    "provenance": {
      "description": {
        "nl": "Ontwikkeld uit de Basisregistratie Adressen en Gebouwen (BAG)"
      }
    },
    "spatial": [
      {
        "prefLabel": {
          "nl": "Nederland"
        }
      },
      {
        "bbox": {
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
        }
      }
    ],
    "temporal": {
      "dcat:startDate": "1996-01-01",
      "dcat:endDate": "2025-12-31"
    },
    "title": {
      "nl": "Basisregistratie Adressen en gebouwen (BAG)"
    },
    "publisher": {
      "name": {
        "nl": "Klantcontactcenter"
      },
      "email": "mailto:bag@kadaster.nl"
    },
    "creator": {
      "name": {
        "nl": "Kadaster"
      },
      "email": null
    },
    "keywords": [
      {
        "nl": "gebouw",
        "en": "building"
      },
      {
        "nl": "ligplaats"
      },
      {
        "nl": "nummeraanduiding"
      },
      {
        "nl": "pand"
      },
      {
        "nl": "standplaats"
      },
      {
        "nl": "verblijfsobject"
      },
      {
        "nl": "woonplaats"
      }
    ],
    "themes": [
      {
        "Concept": "http://publications.europa.eu/resource/authority/data-theme/ECON",
        "prefLabel": {
          "nl": "Economie en financiën"
        }
      },
      {
        "Concept": "http://publications.europa.eu/resource/authority/data-theme/REGI",
        "prefLabel": {
          "nl": "Regio's en steden"
        }
      }
    ]
  },
  "links": [
    {
      "rel": "access",
      "href": "https://service.pdok.nl/lv/bag/wms/v2_0?request=getCapabilities&service=WMS",
      "type": null,
      "distribution":{
        "type": "dcat:Distribution",
        "title": {
          "nl": "BAG (WMS)"
        },
        "description": {
          "nl": "accessPoint"
        },
        "license": "http://creativecommons.org/publicdomain/mark/1.0/deed.nl",
      }
    },
    {
      "rel": "access",
      "href": "https://service.pdok.nl/lv/bag/atom/bag.xml",
      "type": null,
      "distribution":{
        "type": "dcat:Distribution",
        "title": {
          "nl": "BAG download Geopackage"
        },
        "description": {
          "nl": "accessPoint"
        },
        "license": "http://creativecommons.org/publicdomain/mark/1.0/deed.nl",
      }
    }
  ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-records/context.jsonld",
  "type": "Feature",
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core",
    "http://modellen.geostandaarden.nl/dcat-ap-nl/"
  ],
  "id": "urn:ogc:record:generated-id",
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
    "type": [
      "http://www.w3.org/ns/dcat#Dataset",
      "http://www.w3.org/ns/prov#Entity"
    ],
    "contactPoint": {
      "organizationName": {
        "nl": "Directie Operatie, Dienstverlening en Registratie, afdeling Data-, Proces- en Informatiemanagement"
      },
      "email": "mailto:dpi-gi@kadaster.nl"
    },
    "accrualPeriodicity": "http://publications.europa.eu/resource/authority/frequency/DAILY",
    "accessRights": "http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply",
    "conformsTo": {
      "rdf:type": "http://purl.org/dc/terms/Standard",
      "dcterms:issued": "2010-12-08",
      "dcterms:title": {
        "nl": "VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens"
      }
    },
    "created": "2013-02-18",
    "description": {
      "nl": "De gegevens bestaan uit BAG-panden en een deelselectie van BAG-gegevens van deze panden en de zich daarin bevindende verblijfsobjecten. Ook de ligplaatsen en standplaatsen zijn hierin opgenomen met een deelselectie van BAG-gegevens. De gegevens van de nummeraanduiding zijn in deze services onderdeel van de adresseerbare objecten, hierbij wordt slechts 1 adres opgenomen, dus objecten met meerdere adressen (hoofd- en nevenadressen) zijn niet compleet. In deze services zitten dus niet alle BAG adressen. Aangezien niet alle BAG gegevens worden geleverd, adviseren wij u om de actuele gegevens in \u00e9\u00e9n van de BAG producten te controleren. Raadpleeg de BAG Viewer voor enkele bevragingen van BAG gegevens. Een overzicht van alle beschikbare producten kunt u vinden op de website https://www.kadaster.nl/zakelijk/registraties/basisregistraties/bag . De BAG WMS, BAG WFS en BAG API Individuele bevragingen zijn expliciet niet bedoeld voor bulkbevragingen waarmee veel gegevens in \u00e9\u00e9n keer worden opgevraagd en in een database worden verwerkt. Wilt u in \u00e9\u00e9n keer meer gegevens opvragen, dan raden wij u aan om gebruik te maken van onze BAG Geopackage (https://www.kadaster.nl/zakelijk/producten/adressen-en-gebouwen/bag-geopackage) of BAG extract (https://www.kadaster.nl/zakelijk/producten/adressen-en-gebouwen/bag-2.0-extract). De BAG Geopackage en de BAG extract kunt u downloaden via de Atom downloadservice: https://service.pdok.nl/lv/bag/atom/bag.xml . Deze dataset wordt ook gebruikt voor het ontsluiten van het INSPIRE thema Gebouwen. Het betreft gebouwcontouren, constructieve onderdelen van gebouwen en ruimtelijke barrieres. Dit betreft niet-geharmoniseerde data uit de basisregistratie Adressen en Gebouwen (BAG). De service wordt dagelijks geactualiseerd."
    },
    "identifier": "1fa33d90-79cb-11e2-b92a-0800200c9a66",
    "language": "http://publications.europa.eu/resource/authority/language/DUT",
    "provenance": {
      "description": {
        "nl": "Ontwikkeld uit de Basisregistratie Adressen en Gebouwen (BAG)"
      }
    },
    "spatial": [
      {
        "prefLabel": {
          "nl": "Nederland"
        }
      },
      {
        "bbox": {
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
        }
      }
    ],
    "temporal": {
      "dcat:startDate": "1996-01-01",
      "dcat:endDate": "2025-12-31"
    },
    "title": {
      "nl": "Basisregistratie Adressen en gebouwen (BAG)"
    },
    "publisher": {
      "name": {
        "nl": "Klantcontactcenter"
      },
      "email": "mailto:bag@kadaster.nl"
    },
    "creator": {
      "name": {
        "nl": "Kadaster"
      },
      "email": null
    },
    "keywords": [
      {
        "nl": "gebouw",
        "en": "building"
      },
      {
        "nl": "ligplaats"
      },
      {
        "nl": "nummeraanduiding"
      },
      {
        "nl": "pand"
      },
      {
        "nl": "standplaats"
      },
      {
        "nl": "verblijfsobject"
      },
      {
        "nl": "woonplaats"
      }
    ],
    "themes": [
      {
        "Concept": "http://publications.europa.eu/resource/authority/data-theme/ECON",
        "prefLabel": {
          "nl": "Economie en financi\u00ebn"
        }
      },
      {
        "Concept": "http://publications.europa.eu/resource/authority/data-theme/REGI",
        "prefLabel": {
          "nl": "Regio's en steden"
        }
      }
    ]
  },
  "links": [
    {
      "rel": "access",
      "href": "https://service.pdok.nl/lv/bag/wms/v2_0?request=getCapabilities&service=WMS",
      "type": null,
      "distribution": {
        "type": "dcat:Distribution",
        "title": {
          "nl": "BAG (WMS)"
        },
        "description": {
          "nl": "accessPoint"
        },
        "license": "http://creativecommons.org/publicdomain/mark/1.0/deed.nl"
      }
    },
    {
      "rel": "access",
      "href": "https://service.pdok.nl/lv/bag/atom/bag.xml",
      "type": null,
      "distribution": {
        "type": "dcat:Distribution",
        "title": {
          "nl": "BAG download Geopackage"
        },
        "description": {
          "nl": "accessPoint"
        },
        "license": "http://creativecommons.org/publicdomain/mark/1.0/deed.nl"
      }
    }
  ]
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix ns1: <dcterms:> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rec: <https://www.opengis.net/def/ogc-api/records/> .

[] dct:conformsTo [ a "http://purl.org/dc/terms/Standard" ;
            ns1:issued "2010-12-08" ;
            ns1:title [ ] ],
        <http://modellen.geostandaarden.nl/dcat-ap-nl/>,
        <http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core> ;
    dct:created "2013-02-18" ;
    dct:description [ ] ;
    dct:title [ ] ;
    dct:type <file:///github/workspace/Feature>,
        dcat:Dataset,
        prov:Entity ;
    dcat:keyword [ ],
        [ ],
        [ ],
        [ ],
        [ ],
        [ ],
        [ ] ;
    rec:language "http://publications.europa.eu/resource/authority/language/DUT" ;
    rec:themes [ ],
        [ ] .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
$id: https://geonovum-labs.bbr.dcat.dataset-records.json
title: DCAT OGC API record definition
description: DCAT OGC API record definition
required:
- id
- conformsTo
properties:
  id:
    $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordGeoJSON.yaml#/properties/id
  conformsTo:
    type: array
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/conformsTo
    x-jsonld-type: '@id'
  type:
    $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordGeoJSON.yaml#/properties/type
    x-jsonld-id: http://purl.org/dc/terms/type
    x-jsonld-type: '@id'
  time:
    oneOf:
    - enum:
      - null
    - type: object
      properties:
        date:
          type: string
          pattern: ^\d{4}-\d{2}-\d{2}$
        timestamp:
          type: string
          pattern: ^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d+)?Z$
        interval:
          type: array
          minItems: 2
          maxItems: 2
          items:
            oneOf:
            - type: string
              pattern: ^\d{4}-\d{2}-\d{2}$
            - type: string
              pattern: ^\d{4}-\d{2}$
            - type: string
              pattern: ^\d{4}$
            - type: string
              pattern: ^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d+)?Z$
            - type: string
              pattern: ^T\d{2}(:\d{2})?(:\d{2})?(?:\.\d+)?Z$
            - type: string
              enum:
              - ..
          x-jsonld-id: http://www.w3.org/2006/time#hasTime
          x-jsonld-container: '@list'
        resolution:
          type: string
          description: Minimum time period resolvable in the dataset, as an ISO 8601
            duration
          pattern: ^(-?)P(?=\\d|T\\d)(?:(\\d+)Y)?(?:(\\d+)M)?(?:(\\d+)([DW]))?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+(?:\\.\\d+)?)S)?)?$
          x-jsonld-id: https://www.opengis.net/def/ogc-api/records/iso8601period
    x-jsonld-id: http://purl.org/dc/terms/temporal
  geometry:
    $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordGeoJSON.yaml#/properties/geometry
  properties:
    type: object
    required:
    - type
    - title
    - description
    - created
    properties:
      type:
        $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordCommonProperties.yaml#/properties/type
        x-jsonld-id: http://purl.org/dc/terms/type
        x-jsonld-type: '@id'
      title:
        $ref: '#/definitions/MultilingualString'
        description: A human-readable name given to the resource.
        x-jsonld-container: '@set'
        x-jsonld-id: http://purl.org/dc/terms/title
      description:
        $ref: '#/definitions/MultilingualString'
        description: A free-text account of the resource.
        x-jsonld-container: '@set'
        x-jsonld-id: http://purl.org/dc/terms/description
      keywords:
        $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordCommonProperties.yaml#/properties/keywords
        x-jsonld-container: '@set'
        x-jsonld-id: http://www.w3.org/ns/dcat#keyword
      themes:
        type: array
        minItems: 1
        items:
          $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/theme.yaml
        x-jsonld-container: '@set'
        x-jsonld-id: https://www.opengis.net/def/ogc-api/records/themes
    version:
      type: string
      description: The version or edition of a given dataset.
    externalIds:
      $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordCommonProperties.yaml#/properties/externalIds
    created:
      $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordCommonProperties.yaml#/properties/created
    updated:
      $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordCommonProperties.yaml#/properties/updated
    rights:
      $ref: https://schemas.opengis.net/ogcapi/records/part1/1.0/openapi/schemas/recordCommonProperties.yaml#/properties/rights
    x-jsonld-id: '@nest'
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
      rel:
        type: string
      type:
        type: string
        x-jsonld-id: http://purl.org/dc/terms/type
        x-jsonld-type: '@id'
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
            x-jsonld-id: http://purl.org/dc/terms/license
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
  created: http://purl.org/dc/terms/created
  updated: http://purl.org/dc/terms/modified
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
  formats:
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/format
    x-jsonld-context:
      name:
        '@id': https://www.opengis.net/def/ogc-api/records/name
  contacts:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#contactPoint
    x-jsonld-type: '@id'
  accessrights: http://purl.org/dc/terms/accessRights
  linkTemplates: https://www.opengis.net/def/ogc-api/records/hasLinkTemplate
  variables:
    x-jsonld-container: '@id'
    x-jsonld-id: https://www.opengis.net/def/ogc-api/records/hasVariable
    x-jsonld-context:
      '@base': http://example.com/variables/
      '@vocab': https://www.opengis.net/def/ogc-api/records/
x-jsonld-prefixes:
  dct: http://purl.org/dc/terms/
  w3ctime: http://www.w3.org/2006/time#
  rec: https://www.opengis.net/def/ogc-api/records/
  dcat: http://www.w3.org/ns/dcat#
  skos: http://www.w3.org/2004/02/skos/core#
  xsd: http://www.w3.org/2001/XMLSchema#
  owl: http://www.w3.org/2002/07/owl#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
  dctype: http://purl.org/dc/dcmitype/
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  vcard: http://www.w3.org/2006/vcard/ns#
  prov: http://www.w3.org/ns/prov#
  foaf: http://xmlns.com/foaf/0.1/

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-records/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-records/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "created": "dct:created",
    "updated": "dct:modified",
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
    "formats": {
      "@id": "rec:format",
      "@context": {
        "name": "rec:name"
      }
    },
    "contacts": {
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "accessrights": "dct:accessRights",
    "linkTemplates": "rec:hasLinkTemplate",
    "variables": {
      "@container": "@id",
      "@id": "rec:hasVariable",
      "@context": {
        "@base": "http://example.com/variables/",
        "@vocab": "https://www.opengis.net/def/ogc-api/records/"
      }
    },
    "conformsTo": {
      "@container": "@set",
      "@id": "dct:conformsTo",
      "@type": "@id"
    },
    "type": {
      "@id": "dct:type",
      "@type": "@id"
    },
    "time": {
      "@context": {
        "interval": {
          "@id": "w3ctime:hasTime",
          "@container": "@list"
        },
        "resolution": "rec:iso8601period"
      },
      "@id": "dct:temporal"
    },
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
    "themes": {
      "@container": "@set",
      "@id": "rec:themes"
    },
    "properties": "@nest",
    "dct": "http://purl.org/dc/terms/",
    "w3ctime": "http://www.w3.org/2006/time#",
    "rec": "https://www.opengis.net/def/ogc-api/records/",
    "dcat": "http://www.w3.org/ns/dcat#",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "prov": "http://www.w3.org/ns/prov#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-records/context.jsonld)

## Sources

* [DCAT v3 Specification](https://www.w3.org/TR/vocab-dcat-3/)
* [API Records Specification Repository](https://github.com/opengeospatial/ogcapi-records)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/dcat-records`

