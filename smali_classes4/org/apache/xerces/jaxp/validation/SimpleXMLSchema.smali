.class final Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;
.super Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# static fields
.field private static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;


# instance fields
.field private final fGrammar:Lorg/apache/xerces/xni/grammars/Grammar;

.field private final fGrammarDescription:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

.field private final fGrammars:[Lorg/apache/xerces/xni/grammars/Grammar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammars:[Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammarDescription:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public isFullyComposed()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public lockPool()V
    .locals 0

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammarDescription:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammar:Lorg/apache/xerces/xni/grammars/Grammar;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "http://www.w3.org/2001/XMLSchema"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammars:[Lorg/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xerces/xni/grammars/Grammar;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    sget-object v2, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
