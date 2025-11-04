.class final Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field private final fParentComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUseGrammarPoolOnly:Z

.field private final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lorg/apache/xerces/impl/validation/ValidationManager;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fUseGrammarPoolOnly:Z

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    const-string/jumbo v6, "http://www.w3.org/TR/xml-schema-1"

    new-instance v7, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "http://apache.org/xml/features/internal/parser-settings"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fUseGrammarPoolOnly:Z

    move v0, v2

    goto :goto_0

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
