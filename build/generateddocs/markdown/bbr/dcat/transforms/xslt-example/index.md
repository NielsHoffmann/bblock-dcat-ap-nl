
# XSLT Transforms example (Schema)

`geonovum-labs.bbr.dcat.transforms.xslt-example` *v0.1*

A sample building block to showcase transforms

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Example for XSLT transform
#### xml
```xml
<?xml version="1.0"?>
<Article>
  <Title>My Article</Title>
  <Authors>
    <Author>Mr. Foo</Author>
    <Author>Mr. Bar</Author>
  </Authors>
  <Body>This is my article text.</Body>
</Article>
```

## Schema

```yaml
type: object
properties:
  one:
    type: number
  two:
    type: number
  string:
    type: string

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/transforms/xslt-example/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblock-dcat-ap-nl/build/annotated/bbr/dcat/transforms/xslt-example/schema.yaml)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblock-dcat-ap-nl](https://github.com/NielsHoffmann/bblock-dcat-ap-nl)
* Path: `_sources/transforms/xslt-example`

