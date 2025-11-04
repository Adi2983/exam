.class public Lorg/apache/xerces/parsers/StandardParserConfiguration;
.super Lorg/apache/xerces/parsers/DTDConfiguration;


# static fields
.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field protected fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    const-string/jumbo v9, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    const-string/jumbo v9, "http://apache.org/xml/features/validate-annotations"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x5

    const-string/jumbo v9, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x6

    const-string/jumbo v9, "http://apache.org/xml/features/namespace-growth"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x7

    const-string/jumbo v9, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x8

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x9

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0xa

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0xb

    const-string/jumbo v9, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0xc

    const-string/jumbo v9, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0xd

    const-string/jumbo v9, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v9, v7, v8

    move-object v4, v6

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/element-default"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/generate-synthetic-annotations"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validate-annotations"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/honour-all-schemaLocations"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/namespace-growth"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/internal/tolerate-duplicates"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/id-idref-checking"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/identity-constraint-checking"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    const-string/jumbo v9, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    const-string/jumbo v9, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v9, v7, v8

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "http://apache.org/xml/features/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    move v3, v2

    const-string/jumbo v4, "validation/schema"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "validation/schema"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move v3, v2

    const-string/jumbo v4, "validation/schema-full-checking"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "validation/schema-full-checking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    const-string/jumbo v4, "validation/schema/normalized-value"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v1

    const-string/jumbo v4, "validation/schema/normalized-value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    const-string/jumbo v4, "validation/schema/element-default"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    move-object v3, v1

    const-string/jumbo v4, "validation/schema/element-default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/parsers/DTDConfiguration;->checkFeature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "http://apache.org/xml/properties/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    move v3, v2

    const-string/jumbo v4, "schema/external-schemaLocation"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "schema/external-schemaLocation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move v3, v2

    const-string/jumbo v4, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    move v3, v2

    const-string/jumbo v4, "schemaSource"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v1

    const-string/jumbo v4, "schemaSource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/parsers/DTDConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configurePipeline()V
    .locals 6

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Lorg/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/schema"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/StandardParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/StandardParserConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_1
    return-void
.end method
