.class abstract Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;
.super Ljavax/xml/validation/Schema;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;


# instance fields
.field private final fFeatures:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/validation/Schema;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getFeature(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v0, v2

    return-object v0
.end method

.method public abstract getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
.end method

.method public abstract isFullyComposed()Z
.end method

.method public final newValidator()Ljavax/xml/validation/Validator;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    move-object v0, v1

    return-object v0
.end method

.method public final newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    move-object v0, v1

    return-object v0
.end method

.method final setFeature(Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void

    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
