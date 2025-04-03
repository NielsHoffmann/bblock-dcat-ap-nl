
# DCAT-AP-NL profile 3.0 (Model)

`geonovum.bbr.dcat.dcat-ap-nl` *v0.1*

DCAT-AP-NL 3.0 (Dutch profile of DCAT-AP)

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP-NL 3.0

These building blocks provide a framework to test compatibility of the DCAT-AP-NL 3.0 profile with DCAT-AP, and to make this relationship transparent to any implementation of DCAT-AP-NL using OGC standards.


Implementation is still experimental and might change at any moment. For example the shacl validation of the DatasetSeries example is failing at the moment, which is a known thing.
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

#exampleMS:1T2p3o4B-dist-SHP a dcat:Distribution;
#.
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

Note: The shacl Validation fails on this example for a number of missing properties...
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

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
$defs:
  MediaTypeOrExtentShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  MediaTypeShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  DatasetSeriesShape:
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
          the Dataset Series.
        title: contact point
      description:
        description: A free-text account of the Dataset Series.
        title: description
      modified:
        description: The most recent date on which the Dataset Series was changed
          or modified.
        title: modification date
      publisher:
        description: An entity (organisation) responsible for?ensuring the?coherency?of
          the?Dataset Series?
        title: publisher
      accrualPeriodicity:
        description: The frequency at which the Dataset Series is updated.
        title: frequency
      id:
        format: iri-reference
        type: string
      issued:
        description: The date of formal issuance (e.g., publication) of the Dataset
          Series.
        title: release date
      spatial:
        description: A geographic region that is covered by the Dataset Series.
        title: geographical coverage
      title:
        description: A name given to the Dataset Series.
        title: title
      temporal:
        description: A temporal period that the Dataset Series covers.
        title: temporal coverage
      applicableLegislation:
        description: The legislation that mandates the creation or management of the
          Dataset Series.
        title: applicable legislation
  ResourceShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  nonNegativeIntegerShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  GeometryShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  ConceptShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - prefLabel
    properties:
      prefLabel:
        description: A preferred label of the concept.
        title: preferred label
      id:
        format: iri-reference
        type: string
  dateTimeShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  DataServiceShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - title
    - endpointURL
    properties:
      contactPoint:
        description: Contact information that can be used for sending comments about
          the Data Service.
        title: contact point
      landingPage:
        description: A web page that provides access to the Data Service and/or additional
          information.
        title: landing page
      format:
        description: The structure that can be returned by querying the endpointURL.
        title: format
      description:
        description: A free-text account of the Data Service.
        title: description
      title:
        description: A name given to the Data Service.
        title: title
      license:
        description: A licence under which the Data service is made available.
        title: licence
      endpointURL:
        description: The root location or primary endpoint of the service (an IRI).
        title: endpoint URL
      publisher:
        description: An entity (organisation) responsible for making the Data Service
          available.
        title: publisher
      theme:
        description: A category of the Data Service.
        title: theme
      id:
        format: iri-reference
        type: string
      accessRights:
        description: Information regarding access or restrictions based on privacy,
          security, or other policies.
        title: access rights
      conformsTo:
        description: An established (technical) standard to which the Data Service
          conforms.
        title: conforms to
      page:
        description: A page or document about this Data Service
        title: documentation
      keyword:
        description: A keyword or tag describing the Data Service.
        title: keyword
      servesDataset:
        description: This property refers to a collection of data that this data service
          can distribute.
        title: serves dataset
      endpointDescription:
        description: A description of the services available via the end-points, including
          their operations, parameters etc.
        title: endpoint description
      applicableLegislation:
        description: The legislation that mandates the creation or management of the
          Data Service.
        title: applicable legislation
  PeriodOfTimeShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    properties:
      endDate:
        description: The end of the period.
        title: end date
      hasEnd:
        description: The end of a period or interval.
        title: end
      id:
        format: iri-reference
        type: string
      startDate:
        description: The start of the period.
        title: start date
      hasBeginning:
        description: The beginning of a period or interval.
        title: beginning
  decimalShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  TimeInstantShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  DocumentShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  LocationShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    properties:
      centroid:
        description: The geographic center (centroid) of a resource.
        title: centroid
      bbox:
        description: The geographic bounding box of a resource.
        title: bbox
      geometry:
        description: The corresponding geometry for a resource.
        title: geometry
      id:
        format: iri-reference
        type: string
  LegalResourceShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  ConceptSchemeShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - title
    properties:
      id:
        format: iri-reference
        type: string
      title:
        description: A name of the concept scheme.
        title: title
  DatasetShape:
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
  FrequencyShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  CatalogShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - description
    - publisher
    - title
    properties:
      creator:
        description: An entity responsible for the creation of the catalogue.
        title: creator
      themeTaxonomy:
        description: A knowledge organization system used to classify the Resources
          that are in the Catalogue.
        title: themes
      hasPart:
        description: A related Catalogue that is part of the described Catalogue.
        title: has part
      catalog:
        description: A catalogue whose contents are of interest in the context of
          this catalogue.
        title: catalogue
      description:
        description: A free-text account of the Catalogue.
        title: description
      language:
        description: A language used in the textual metadata describing titles, descriptions,
          etc. of the Datasets in the Catalogue.
        title: language
      title:
        description: A name given to the Catalogue.
        title: title
      license:
        description: A licence under which the Catalogue can be used or reused.
        title: licence
      service:
        description: A site or end-point (Data Service) that is listed in the Catalogue.
        title: service
      rights:
        description: A statement that specifies rights associated with the Catalogue.
        title: rights
      record:
        description: A Catalogue Record that is part of the Catalogue.
        title: record
      modified:
        description: The most recent date on which the Catalogue was modified.
        title: modification date
      publisher:
        description: An entity (organisation) responsible for making the Catalogue
          available.
        title: publisher
      id:
        format: iri-reference
        type: string
      issued:
        description: The date of formal issuance (e.g., publication) of the Catalogue.
        title: release date
      spatial:
        description: A geographical area covered by the Catalogue.
        title: geographical coverage
      dataset:
        description: A Dataset that is part of the Catalogue.
        title: dataset
      temporal:
        description: A temporal period that the Catalogue covers.
        title: temporal coverage
      homepage:
        description: A web page that acts as the main page for the Catalogue.
        title: homepage
      applicableLegislation:
        description: The legislation that mandates the creation or management of the
          Catalog.
        title: applicable legislation
  AgentShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - name
    properties:
      name:
        description: A name of the agent.
        title: name
      id:
        format: iri-reference
        type: string
      type:
        description: The nature of the agent.
        title: type
  ActivityShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  mediaTypeShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  durationShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  PolicyShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  RoleShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  IdentifierShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - notation
    properties:
      notation:
        description: A string that is an identifier in the context of the identifier
          scheme referenced by its datatype.
        title: notation
      id:
        format: iri-reference
        type: string
  RelationshipShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - relation
    - hadRole
    properties:
      hadRole:
        description: A function of an entity or agent with respect to another entity
          or resource.
        title: had role
      id:
        format: iri-reference
        type: string
      relation:
        description: A resource related to the source resource.
        title: relation
  DistributionShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - accessURL
    properties:
      byteSize:
        description: The size of a Distribution in bytes.
        title: byte size
      accessURL:
        description: A URL that gives access to a Distribution of the Dataset.
        title: access URL
      downloadURL:
        description: A URL that is a direct link to a downloadable file in a given
          format.
        title: download URL
      description:
        description: A free-text account of the Distribution.
        title: description
      language:
        description: A language used in the Distribution.
        title: language
      availability:
        description: An indication how long it is planned to keep the Distribution
          of the Dataset available.
        title: availability
      title:
        description: A name given to the Distribution.
        title: title
      temporalResolution:
        description: The minimum time period resolvable in the dataset distribution.
        title: temporal resolution
      accessService:
        description: A data service that gives access to the distribution of the dataset.
        title: access service
      spatialResolutionInMeters:
        description: The minimum spatial separation resolvable in a dataset distribution,
          measured in meters.
        title: spatial resolution
      rights:
        description: A statement that specifies rights associated with the Distribution.
        title: rights
      checksum:
        description: A mechanism that can be used to verify that the contents of a
          distribution have not changed.
        title: checksum
      modified:
        description: The most recent date on which the Distribution was changed or
          modified.
        title: modification date
      id:
        format: iri-reference
        type: string
      issued:
        description: The date of formal issuance (e.g., publication) of the Distribution.
        title: release date
      format:
        description: The file format of the Distribution.
        title: format
      compressFormat:
        description: The format of the file in which the data is contained in a compressed
          form, e.g. to reduce the size of the downloadable file.
        title: compression format
      mediaType:
        description: The media type of the Distribution as defined in the official
          register of media types managed by IANA.
        title: media type
      license:
        description: A licence under which the Distribution is made available.
        title: licence
      hasPolicy:
        description: The policy expressing the rights associated with the distribution
          if using the [[ODRL]] vocabulary.
        title: has policy
      packageFormat:
        description: The format of the file in which one or more data files are grouped
          together, e.g. to enable a set of related files to be downloaded together.
        title: packaging format
      conformsTo:
        description: An established schema to which the described Distribution conforms.
        title: linked schemas
      page:
        description: A page or document about this Distribution.
        title: documentation
      applicableLegislation:
        description: The legislation that mandates the creation or management of the
          Distribution.
        title: applicable legislation
      status:
        description: The status of the distribution in the context of maturity lifecycle.
        title: status
  hexBinaryShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  ChecksumAlgorithmShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  LicenseDocumentShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    properties:
      id:
        format: iri-reference
        type: string
      type:
        description: A type of licence, e.g. indicating 'public domain' or 'royalties
          required'.
        title: type
  RightsStatementShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  ChecksumShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - algorithm
    - checksumValue
    properties:
      checksumValue:
        description: A lower case hexadecimal encoded digest value produced using
          a specific algorithm.
        type: string
        title: checksum value
      id:
        format: iri-reference
        type: string
      algorithm:
        description: The algorithm used to produce the subject Checksum.
        title: algorithm
  '@context':
    format: iri-reference
    $comment: The URL of the JSON-LD @context
    type: string
  LinguisticSystemShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  StandardShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  KindShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  AttributionShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  TemporalLiteralShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  LiteralShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  CatalogRecordShape:
    description: ''
    type: object
    title: ''
    required:
    - id
    - modified
    - primaryTopic
    properties:
      primaryTopic:
        description: A link to the Dataset, Data service or Catalog described in the
          record.
        title: primary topic
      description:
        description: A free-text account of the record. This property can be repeated
          for parallel language versions of the description.
        title: description
      modified:
        description: The most recent date on which the Catalogue entry was changed
          or modified.
        title: modification date
      language:
        description: A language used in the textual metadata describing titles, descriptions,
          etc. of the Catalogued Resource.
        title: language
      id:
        format: iri-reference
        type: string
      conformsTo:
        description: An Application Profile that the Catalogued Resource&#39;s metadata
          conforms to.
        title: application profile
      source:
        description: The original metadata that was used in creating metadata for
          the Dataset, Data Service or Dataset Series.
        title: source metadata
      issued:
        description: The date on which the description of the Resource was included
          in the Catalogue.
        title: listing date
      title:
        description: A name given to the Catalogue Record.
        title: title
      status:
        description: The status of the catalogue record in the context of editorial
          flow of the dataset and data service descriptions.
        title: change type
  ProvenanceStatementShape:
    format: iri-reference
    description: ''
    type: string
    title: ''
  container_language:
    patternProperties:
      ^[A-Za-z]{2,3}$:
        $comment: Overly simplified version of the regex. See https://github.com/w3c/wot-thing-description/blob/main/validation/td-json-schema-validation.json
          for a complete regex
        type: string
    additionalProperties: false
    type: object
additionalProperties: false
type: object
required:
- '@context'
- data
properties:
  data:
    minItems: 1
    type: array
    items:
      $ref: '#/$defs/DatasetShape'
  '@context':
    $ref: '#/$defs/@context'

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-ap-nl/schema.json)
* JSON version: [schema.json](https://geonovum.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/dcat-ap-nl/schema.yaml)

## Sources

* [DCAT-AP-NL 3.0 Specification](https://docs.geostandaarden.nl/dcat/dcat-ap-nl30/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum/bblock-dcat-ap-nl](https://github.com/Geonovum/bblock-dcat-ap-nl)
* Path: `_sources/dcat-ap-nl`

