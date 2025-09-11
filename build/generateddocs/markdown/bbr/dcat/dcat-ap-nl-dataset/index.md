
# DCAT-AP-NL profile 3.0 - Dataset (Model)

`geonovum.bbr.dcat.dcat-ap-nl-dataset` *v0.1*

DCAT-AP-NL 3.0 Dataset

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL 3.0 - Dataset

These building blocks provide a framework to test compatibility of the DCAT-AP-NL 3.0 profile with DCAT-AP, and to make this relationship transparent to any implementation of DCAT-AP-NL using OGC standards.


Implementation is still experimental and might change at any moment. For example the shacl validation of the DatasetSeries example is failing at the moment, which is a known thing.



## Examples

### DCAT-AP-NL example - Dataset
An example from the DCAT-AP-NL profile for a Dataset
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

exBB:2482250f-3b00-4439-9f93-f3118229b201 a dcat:Dataset;
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

## Sources

* [DCAT-AP-NL 3.0 Specification](https://docs.geostandaarden.nl/dcat/dcat-ap-nl30/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/dcat-ap-nl-dataset`

