.class Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XMLGrammarPoolWrapper"
.end annotation


# instance fields
.field private fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    return-void
.end method

.method public clear()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    return-void
.end method

.method getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v0, v1

    return-object v0
.end method

.method public lockPool()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method setGrammarPool(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method

.method public unlockPool()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    return-void
.end method
