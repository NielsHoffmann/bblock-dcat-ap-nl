
# Example for a poi dataset (Model)

`geonovum-labs.bbr.dcat.pois` *v0.1*

A building block to demonstrate how to document a point of interest (POI) dataset.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### poi examples
An example of a poi dataset in JSON format.
#### json
```json
{
    "type":"Feature",
    "geometry":{
        "type":"Point",
        "coordinates":[
            5.068888697271806,
            52.3642967901659
        ]
    },
    "properties":{
        "poi_id":null,
        "naam":"Pampus",
        "type":null
    },
    "id":1
}
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/pois/context.jsonld",
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [
      5.068888697271806,
      52.3642967901659
    ]
  },
  "properties": {
    "poi_id": null,
    "naam": "Pampus",
    "type": null
  },
  "id": 1
}
```

#### ttl
```ttl
@prefix ex: <http://example.org/ontology/> .

[] ex:geometry [ ex:type "Point" ] ;
    ex:type "Feature" .


```

## Schema

```yaml
$schema: http://json-schema.org/draft/2019-09/schema
$id: http://localhost:5000/collections/pois/schema
type: object
title: pois
properties:
  fid:
    type: number
  naam:
    type: string
    x-jsonld-id: http://example.org/ontology/naam
  type:
    type: string
    x-jsonld-id: http://example.org/ontology/type
  geometry:
    type: object
    properties:
      type:
        type: string
        x-jsonld-id: http://example.org/ontology/type
      coordinates:
        type: array
        items:
          type: number
    x-jsonld-id: http://example.org/ontology/geometry
    x-jsonld-type: '@id'
x-jsonld-extra-terms:
  poi_id: http://example.org/ontology/poi_id
x-jsonld-prefixes:
  ex: http://example.org/ontology/
  dct: http://purl.org/dc/terms/
  dcat: http://www.w3.org/ns/dcat#
  skos: http://www.w3.org/2004/02/skos/core#
  vcard: http://www.w3.org/2006/vcard/ns#
  foaf: http://xmlns.com/foaf/0.1/

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/pois/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/pois/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "poi_id": "ex:poi_id",
    "naam": "ex:naam",
    "type": "ex:type",
    "geometry": {
      "@id": "ex:geometry",
      "@type": "@id"
    },
    "ex": "http://example.org/ontology/",
    "dct": "http://purl.org/dc/terms/",
    "dcat": "http://www.w3.org/ns/dcat#",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/pois/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/pois`

