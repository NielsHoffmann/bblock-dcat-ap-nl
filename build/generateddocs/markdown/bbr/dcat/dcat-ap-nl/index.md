
# DCAT-AP-NL profile 3.0 (Model)

`geonovum.bbr.dcat.dcat-ap-nl` *v0.1*

DCAT-AP-NL 3.0 (Dutch profile of DCAT-AP)

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL 3.0

These building blocks provide a framework to test compatibility of the DCAT-AP-NL 3.0 profile with DCAT-AP, and to make this relationship transparent to any implementation of DCAT-AP-NL using OGC standards.


Implementation is still experimental and might change at any moment. For example the shacl validation of the DatasetSeries example is failing at the moment, which is a known thing.



## Examples

### DCAT-AP-NL example - complete
An example from the DCAT-AP-NL profile
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

## Catalog

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

## CatalogRecord

  exampleMS:1T2p3o4B-rec a dcat:CatalogRecord;
   dct:conformsTo <https://semiceu.github.io/DCAT-AP/releases/3.0.0>;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:modified "2019-02-27T15:15:08Z" ; 
   foaf:primaryTopic exampleMS:1T2p3o4B ;
   dct:source <https://www.nationaalgeoregister.nl/geonetwork/srv/dut/catalog.search#/metadata/ba83c30f-12f7-4582-a590-852b6d1706de?tab=general>
  .

## Dataset

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

# ## DatasetSeries

# example-ds:BeePopulation2022 a dcat:Dataset;
#   dcat:inSeries example-ser:BeePopulation .

# example-ds:BeePopulation2023 a dcat:Dataset;
#   dcat:inSeries example-ser:BeePopulation .

# example-ser:BeePopulation a dcat:DatasetSeries;
#   dct:title "Bee population"@en;
#   dct:description "Bee population annual serie"@en;
#   .

## Distribution

exampleMS:1T2p3o4B-dist-SHP a dcat:Distribution;
   dcat:accessURL <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> ;
   dcatap:applicableLegislation <http://data.europa.eu/eli/reg_impl/2023/138/oj>;
   dcat:downloadURL <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> ;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:license <http://creativecommons.org/publicdomain/zero/1.0/deed.nl> ;
   dct:conformsTo <http://inspire.ec.europa.eu/schemas/hy/4.0/HydroBase.xsd> ;
   dcat:mediaType <https://www.iana.org/assignments/media-types/application/vnd.shp>
   .

<https://www.iana.org/assignments/media-types/application/vnd.shp> a dct:MediaType
.
<http://inspire.ec.europa.eu/schemas/hy/4.0/HydroBase.xsd> a dct:Standard
.
<https://orgea.exampleMS.gov/files/1T2p3o4B.shp>  a rdf:Resource
.
 <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> a rdf:Resource
.
<http://creativecommons.org/publicdomain/zero/1.0/deed.nl> a dct:LicenseDocument
.

## Dataservice

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

<http://www.opengis.net/def/serviceType/ogc/wms> a dct:Standard
.
```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
$defs:
  Dataset:
    description: ''
    type: object
    title: ''
    required:
    - id
    - description
    - title
    properties:
      contactPoint:
        description: Contact information that can be used for sending comments about
          the Dataset.
        title: contact point
      hasVersion:
        description: A related Dataset that is a version, edition, or adaptation of
          the described Dataset.
        title: has version
      description:
        description: A free-text account of the Dataset.
        title: description
      language:
        description: A language of the Dataset.
        title: language
      source:
        description: A related Dataset from which the described Dataset is derived.
        title: source
      title:
        type: string
        description: A name given to the Dataset.
        title: title
      type:
        description: A type of the Dataset.
        title: type
      distribution:
        description: An available Distribution for the Dataset.
        title: dataset distribution
      relation:
        description: A related resource.
        title: related resource
      isReferencedBy:
        description: A related resource, such as a publication, that references, cites,
          or otherwise points to the dataset.
        title: is referenced by
      wasGeneratedBy:
        description: An activity that generated, or provides the business context
          for, the creation of the dataset.
        title: was generated by
      provenance:
        description: A statement about the lineage of a Dataset.
        title: provenance
      inSeries:
        description: A dataset series of which the dataset is part.
        title: in series
      temporalResolution:
        format: duration
        description: The minimum time period resolvable in the dataset.
        type: string
        title: temporal resolution
      spatialResolutionInMeters:
        description: The minimum spatial separation resolvable in a dataset, measured
          in meters.
        type: string
        title: spatial resolution
      qualifiedRelation:
        description: A description of a relationship with another resource.
        title: qualified relation
      modified:
        description: The most recent date on which the Dataset was changed or modified.
        title: modification date
      theme:
        description: A category of the Dataset.
        title: theme
      id:
        format: iri-reference
        type: string
      issued:
        description: The date of formal issuance (e.g., publication) of the Dataset.
        title: release date
      spatial:
        description: A geographic region that is covered by the Dataset.
        title: geographical coverage
      keyword:
        description: A keyword or tag describing the Dataset.
        title: keyword
      temporal:
        description: A temporal period that the Dataset covers.
        title: temporal coverage
      identifier:
        description: A secondary identifier of the Dataset
        title: other identifier
      creator:
        description: An entity responsible for producing the dataset.
        title: creator
      landingPage:
        description: A web page that provides access to the Dataset, its Distributions
          and/or additional information.
        title: landing page
      version:
        description: The version indicator (name or identifier) of a resource.
        title: version
      sample:
        description: A sample distribution of the dataset.
        title: sample
      publisher:
        description: An entity (organisation) responsible for making the Dataset available.
        title: publisher
      accrualPeriodicity:
        description: The frequency at which the Dataset is updated.
        title: frequency
      accessRights:
        description: Information that indicates whether the Dataset is publicly accessible,
          has access restrictions or is not public.
        title: access rights
      conformsTo:
        description: An implementing rule or other specification.
        title: conforms to
      page:
        description: A page or document about this Dataset.
        title: documentation
      versionNotes:
        description: A description of the differences between this version and a previous
          version of the Dataset.
        title: version notes
      qualifiedAttribution:
        description: An Agent having some form of responsibility for the resource.
        title: qualified attribution
      applicableLegislation:
        description: The legislation that mandates the creation or management of the
          Dataset.
        title: applicable legislation
  '@context':
    format: iri-reference
    $comment: The URL of the JSON-LD @context
    type: string
properties:
  data:
    minItems: 1
    type: array
    items:
      $ref: '#/$defs/Dataset'
  '@context':
    $ref: '#/$defs/@context'

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-ap-nl/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-ap-nl/schema.yaml)

## Sources

* [DCAT-AP-NL 3.0 Specification](https://docs.geostandaarden.nl/dcat/dcat-ap-nl30/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/dcat-ap-nl`

