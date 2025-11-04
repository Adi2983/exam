.class final Lorg/apache/xerces/jaxp/validation/XMLSchema;
.super Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;


# instance fields
.field private final fFullyComposed:Z

.field private final fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/XMLSchema;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/XMLSchema;->fFullyComposed:Z

    return-void
.end method


# virtual methods
.method public getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchema;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v0, v1

    return-object v0
.end method

.method public isFullyComposed()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchema;->fFullyComposed:Z

    move v0, v1

    return v0
.end method
