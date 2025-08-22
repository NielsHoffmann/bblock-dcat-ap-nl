
# DCAT-AP-NL profile 3.0 - Distribution (Model)

`geonovum.bbr.dcat.dcat-ap-nl-distribution` *v0.1*

DCAT-AP-NL 3.0 Distribution

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL 3.0 - Distribution

These building blocks provide a framework to test compatibility of the DCAT-AP-NL 3.0 profile with DCAT-AP, and to make this relationship transparent to any implementation of DCAT-AP-NL using OGC standards.


Implementation is still experimental and might change at any moment. For example the shacl validation of the DatasetSeries example is failing at the moment, which is a known thing.



## Examples

### DCAT-AP-NL example - Distribution
An example from the DCAT-AP-NL profile for a Distribution
#### ttl
```ttl
@prefix exBB: <http://example/buildingblock> .
@prefix adms: <http://www.w3.org/ns/adms#>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dcatap: <http://data.europa.eu/r5r/>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#>.
@prefix cnt: <http://www.w3.org/2011/content#> .

exBB:2482250f-3b00-4439-9f93-f3118229b201_d0e1102 a dcat:Distribution ;
    dct:license <http://creativecommons.org/licenses/by/4.0/deed.nl> ;
    dct:description "accessPoint"@nl ;
    dct:title "WMS view service TOP10NL"@nl ;
    cnt:characterEncoding "UTF-8"^^xsd:string ;
    adms:representationTechnique <http://inspire.ec.europa.eu/metadata-codelist/SpatialRepresentationType/vector> ;
    dcat:accessService <http://kadaster/2482250f-3b00-4439-9f93-f3118229b201/DS/d0e1068> ;
    dcat:accessURL <https://service.pdok.nl/brt/top10nl/wms/v1_0?request=GetCapabilities&service=wms> .
```

## Sources

* [DCAT-AP-NL 3.0 Specification](https://docs.geostandaarden.nl/dcat/dcat-ap-nl30/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum/bblock-dcat-ap-nl](https://github.com/Geonovum/bblock-dcat-ap-nl)
* Path: `_sources/dcat-ap-nl-distribution`

