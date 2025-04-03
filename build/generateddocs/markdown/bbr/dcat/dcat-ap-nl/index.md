
# DCAT-AP-NL profile (Model)

`geonovum.bbr.dcat.dcat-ap-nl` *v0.1*

DCAT-AP-NL 3.0 (Dutch profile of DCAT-AP)

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL 

This building block provides a framework to test compatibility of the DCAT-AP-NL with DCAT-AP, and to make this relationship transparent to any implementation of DCAT-AP-NL using OGC standards.

## Examples

### DCAT-AP-NL example - Dataset
An example from the DCAT-AP-NL profile for a Dataset
#### ttl
```ttl
## Imports om relevante waardes uit waardelijsten of gegevens uit externe bronnen op te nemen.
##  Dit is in principe alleen nodig voor validatie en als er gebruik gemaakt kan worden van owl:imports bij validatie.
@prefix owl: <http://www.w3.org/2002/07/owl#> .
[] owl:imports 
  <http://publications.europa.eu/resource/authority/access-right/PUBLIC> ,
  <http://data.europa.eu/eli/reg_impl/2023/138/oj> ,
  <http://data.europa.eu/eli/reg/2010/1089> ,
  <http://publications.europa.eu/resource/authority/language/NLD> ,
  <http://www.geonames.org/2750405/about.rdf> ,
  <http://publications.europa.eu/resource/authority/data-theme/EDUC> .
## End Import

@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix adms: <http://www.w3.org/ns/adms#>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dcatap: <http://data.europa.eu/r5r/>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#>.
@prefix eli: <http://data.europa.eu/eli/ontology#> .

exampleMS:1T2p3o4B a dcat:Dataset;
   dct:title "Naam van de dataset"@nl;
   dct:title "Title of the dataset"@en;
   dct:accessRights <http://publications.europa.eu/resource/authority/access-right/PUBLIC>;
   dcatap:applicableLegislation <http://data.europa.eu/eli/reg_impl/2023/138/oj>;
   dct:conformsTo <http://data.europa.eu/eli/reg/2010/1089>;
   dcat:contactPoint [
     a <https://json-ld.org/playground/Organization> ;
     vcard:fn "Mijn Organisatie"@nl ;
     vcard:fn "My Organization"@en ;
     vcard:hasEmail <mailto:opendata@mijnorganisatie.nl> ;
     vcard:hasURL "http://mijnorganisatie.org/" ;
     vcard:organization-name "Mijn Organisatie"@nl ;
     vcard:organization-name "My Organization"@en
     ] ; 
   dct:creator [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
   dct:description "beschrijving van de dataset"@nl;
   dct:description "description of the dataset in english"@en;
   dct:identifier "https://data.exampleMS.gov/id/dataset/1T2p3o4B";
   dcat:keyword "trefwoord 1"@nl;
   dcat:keyword "trefwoord 2"@nl;
   dcat:keyword "keyword 1"@en;
   dcat:keyword "keyword 2"@en;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:publisher [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
   dct:spatial <https://www.geonames.org/2750405>;
   dct:spatial [a dct:Location ;
                  dcat:bbox "POLYGON ((3.053 47.975,7.24 47.975,7.24 53.504,3.053 53.504,3.053 47.975))"^^rdf:wktLiteral;
  ] ;
   dct:temporal [ a dct:PeriodOfTime ;
     dcat:startDate "2016-03-28"^^xsd:date ;
     dcat:endDate   "2018-08-25"^^xsd:date ;
     ] ;
   dcat:theme <http://publications.europa.eu/resource/authority/data-theme/EDUC>;
   dcat:distribution exampleMS:1T2p3o4B-dist-SHP;
   dcat:distribution exampleMS:1T2p3o4B-dist-WMS
   .

exampleMS:1T2p3o4B-dist-SHP a dcat:Distribution;
.
# wordt verder uitgewerkt in voorbeeld Distributie

# Aanvullingen voor EU waardelijsten, die nog niet volledig zijn ontsloten 
# De dct:RightsStatement zit niet in de waardelijst. Dat lijkt een fout in de waardelijst.
<http://publications.europa.eu/resource/authority/access-right/PUBLIC> a dct:RightsStatement .

# De typering dct:LinguisticSystem zit niet in de waardelijst. Dat lijkt een fout in de waardelijst.
<http://publications.europa.eu/resource/authority/language/NLD> a dct:LinguisticSystem .

# Geen RDF van beschikbaar
<http://data.europa.eu/eli/reg_impl/2023/138/oj> a eli:LegalResource .

# Geen RDF van beschikbaar
<http://data.europa.eu/eli/reg/2010/1089> a dct:Standard .

# Geonames is niet gedefinieert als een dct:Location. 
<https://www.geonames.org/2750405> a dct:Location .

# Deze zou je kunnen importeren, maar dan krijg je validatiefouten op ConceptScheme shapes, omdat de adms ConceptSchemes niet voldoen aan de ConceptScheme shape van DCAT-AP.
<http://purl.org/adms/publishertype/LocalAuthority> a skos:Concept ;
 skos:prefLabel"Local Authority"@en .
```


### DCAT-AP-NL example - Distribution
An example from the DCAT-AP-NL profile for a Distribution
#### ttl
```ttl
@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dcatap: <http://data.europa.eu/r5r/>.
@prefix dct: <http://purl.org/dc/terms/>.

exampleMS:1T2p3o4B-dist-SHP a dcat:Distribution;
   dcat:accessURL <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> ;
   dcatap:applicableLegislation <http://data.europa.eu/eli/reg_impl/2023/138/oj>;
   dcat:downloadURL <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> ;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:license <http://creativecommons.org/publicdomain/zero/1.0/deed.nl> ;
   dct:conformsTo <http://inspire.ec.europa.eu/schemas/hy/4.0/HydroBase.xsd> ;
   dcat:mediaType <https://www.iana.org/assignments/media-types/application/vnd.shp>
   .
```


### DCAT-AP-NL example - Dataservice
An example from the DCAT-AP-NL profile for a Dataservice
#### ttl
```ttl
@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix adms: <http://www.w3.org/ns/adms#>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dcatap: <http://data.europa.eu/r5r/>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .

exampleMS:1T2p3o4B-dataservice-WMS a dcat:DataService;
   dct:title "Naam van de dataservice"@nl;
   dct:title "Title of the dataservice"@en;
   dct:accessRights <http://publications.europa.eu/resource/authority/access-right/PUBLIC>;
   dcatap:applicableLegislation <http://data.europa.eu/eli/reg_impl/2023/138/oj>;
   dct:conformsTo <http://www.opengis.net/def/serviceType/ogc/wms>;
   dcat:contactPoint [
     a vcard:Kind;
     vcard:fn "Mijn Organisatie"@nl ;
     vcard:fn "My Organization"@en ;
     vcard:hasEmail <mailto:opendata@mijnorganisatie.nl> ;
     vcard:hasURL "http://mijnorganisatie.org/" ;
     vcard:organization-name "Mijn Organisatie"@nl ;
     vcard:organization-name "My Organization"@en
     ] ; 
   dct:creator [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
   dct:description "beschrijving van de dataservice"@nl;
   dct:description "description of the dataservice in english"@en;
   foaf:page <https://orgea.exampleMS.gov/QoS.html> ;
   dcat:endpointDescription <https://orgea.exampleMS.gov/services/wms?&request=GetCapabilities&service=WMS>;
   dcat:endpointURL <https://orgea.exampleMS.gov/services/wms?> ;
   dct:identifier "https://data.exampleMS.gov/id/data/1T2p3o4B-dataservice-WMS";
   dcat:keyword "trefwoord 1"@nl;
   dcat:keyword "trefwoord 2"@nl;
   dcat:keyword "keyword 1"@en;
   dcat:keyword "keyword 2"@en;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:license <http://creativecommons.org/publicdomain/zero/1.0/deed.nl> ;
   dct:publisher [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
   dcat:theme <http://publications.europa.eu/resource/authority/data-theme/EDUC>;
   dcat:servesDataset exampleMS:1T2p3o4B
.
```


### DCAT-AP-NL example - Catalog
An example from the DCAT-AP-NL profile for a Catalog
#### ttl
```ttl
@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .

exampleMS:Datacatalog  a dcat:Catalogue;
  dct:title "De naam van de catalog"@nl;
   dcat:contactPoint [
     a vcard:Kind ;
     vcard:fn "Mijn Organisatie"@nl ;
     vcard:fn "My Organization"@en ;
     vcard:hasEmail <mailto:opendata@mijnorganisatie.nl> ;
     vcard:hasURL "http://mijnorganisatie.org/" ;
     vcard:organization-name "Mijn Organisatie"@nl ;
     vcard:organization-name "My Organization"@en
     ] ; 
  dct:description "beschrijving van de catalog"@nl;
   dct:publisher [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
  dcat:dataset exampleMS:1T2p3o4B ;
  dcat:service exampleMS:1T2p3o4B-dataservice-WMS
  .
```


### DCAT-AP-NL example - CatalogRecord
An example from the DCAT-AP-NL profile for a CatalogRecord
#### ttl
```ttl
@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .

exampleMS:1T2p3o4B-rec a dcat:CatalogRecord;
   dct:conformsTo <https://semiceu.github.io/DCAT-AP/releases/3.0.0>;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:modified "2019-02-27T15:15:08Z" ; 
   foaf:primaryTopic exampleMS:1T2p3o4B ;
   dct:source <https://www.nationaalgeoregister.nl/geonetwork/srv/dut/catalog.search#/metadata/ba83c30f-12f7-4582-a590-852b6d1706de?tab=general>
  .
```


### DCAT-AP-NL example - DatasetSeries
An example from the DCAT-AP-NL profile for a DatasetSeries
#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix example-ds: <https://data.gov.gr/id/dataset/> .
@prefix example-ser: <https://data.gov.gr/id/datasetseries/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .

example-ds:BeePopulation2022 a dcat:Dataset;
  dcat:inSeries example-ser:BeePopulation .

example-ds:BeePopulation2023 a dcat:Dataset;
  dcat:inSeries example-ser:BeePopulation .

example-ser:BeePopulation a dcat:DatasetSeries;
  dct:title "Bee population"@en;
  dct:description "Bee population annual serie"@en;
  .
```

## Sources

* [DCAT-AP-NL 3.0 Specification](https://docs.geostandaarden.nl/dcat/dcat-ap-nl30/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/dcat-ap-nl`

